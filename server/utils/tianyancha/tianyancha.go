package tianyancha

import (
	"admin/server/global"
	"admin/server/model/company"
	"encoding/json"
	"errors"
	"fmt"
	"go.uber.org/zap"
	"io/ioutil"
	"net/http"
	"net/url"
)

// 企业基本信息返回结构图
type CompanyInfoRsp struct {
	ErrorCode int    `json:"error_code"`
	Reason    string `json:"reason"`
	Result    *struct {
		Name            string `json:"name"`
		CreditCode      string `json:"creditCode"`
		Type            *int   `json:"type"`
		CompanyId       *int   `json:"id"`
		LegalPersonName string `json:"legalPersonName"`
		RegLocation     string `json:"regLocation"`
		TaxNumber       string `json:"taxNumber"`
		RegStatus       string `json:"regStatus"`
		IndustryAll     *struct {
			Category       string `json:"category"`
			CategoryBig    string `json:"categoryBig"`
			CategoryMiddle string `json:"categoryMiddle"`
			CategorySmall  string `json:"categorySmall"`
		} `json:"industryAll"`
		Industry string `json:"industry"`
		Base     string `json:"base"`
		City     string `json:"city"`
		District string `json:"district"`
	} `json:"result"`
}

// 获取企业信息
func GetCompanyInfo(keyword string) (company.Company, error) {
	var (
		rsp CompanyInfoRsp
		md  company.Company
		db  = global.DB.Model(&company.Company{})
	)
	// 优先从库里查询数据
	err := global.DB.Where("name = ?", keyword).First(&md).Error
	if err == nil && md.ID != 0 {
		return md, nil
	}
	err = global.DB.Where("creditCode = ?", keyword).First(&md).Error
	if err == nil && md.ID != 0 {
		return md, nil
	}

	// 通过接口获取数据并且存储
	data, err := getCompanyInfoFromApi(keyword)
	if err != nil {
		return md, err
	}
	err = json.Unmarshal(data, &rsp)
	if err != nil {
		return md, err
	}
	if rsp.ErrorCode != 0 {
		return md, errors.New(fmt.Sprintf("error code is %d, error reason is %s",
			rsp.ErrorCode, rsp.Reason))
	}
	re := rsp.Result
	if re == nil {
		return md, errors.New("result is empty")
	}
	md.Name = re.Name
	md.CreditCode = re.CreditCode
	md.Type = re.Type
	md.CompanyId = re.CompanyId
	md.LegalPersonName = re.LegalPersonName
	md.RegStatus = re.RegStatus
	md.Base = re.Base
	md.City = re.City
	md.District = re.District
	md.Industry = re.Industry
	if re.IndustryAll != nil {
		md.Category = re.IndustryAll.Category
		md.CategoryBig = re.IndustryAll.CategoryBig
		md.CategoryMiddle = re.IndustryAll.CategoryMiddle
		md.CategorySmall = re.IndustryAll.CategorySmall
	}
	md.Detail = string(data)
	err = db.Save(&md).Error
	if err != nil {
		return md, err
	}
	return md, nil
}

// 通过接口获取企业信息
func getCompanyInfoFromApi(keyword string) ([]byte, error) {
	baseUrl := "http://open.api.tianyancha.com/services/open/ic/baseinfo/normal?keyword="
	apiUrl := baseUrl + url.QueryEscape(keyword)

	data, err := httpGet(apiUrl)
	if err != nil {
		global.LOG.Error("GetCompanyInfo", zap.String("keyword", keyword), zap.Error(err))
		return nil, err
	}
	global.LOG.Info("GetCompanyInfo", zap.String("keyword", keyword), zap.String("data", string(data)))

	return data, nil
}

func httpGet(apiUrl string) ([]byte, error) {
	token := "df416e74-6de4-4db6-8606-b6e72e443efc"
	client := &http.Client{}
	request, err := http.NewRequest("GET", apiUrl, nil)
	request.Header.Add("Authorization", token)
	if err != nil {
		global.LOG.Error("httpGet", zap.String("apiUrl", apiUrl), zap.Error(err))
		return nil, err
	}

	response, err := client.Do(request)
	if err != nil {
		global.LOG.Error("httpGet", zap.String("apiUrl", apiUrl), zap.Error(err))
		return nil, err
	}
	defer response.Body.Close()

	data, err := ioutil.ReadAll(response.Body)
	if err != nil {
		global.LOG.Error("httpGet", zap.String("apiUrl", apiUrl), zap.Error(err))
		return nil, err
	}
	return data, nil
}
