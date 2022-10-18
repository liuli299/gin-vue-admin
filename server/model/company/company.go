// 自动生成模板Company
package company

import (
	"admin/server/global"
)

// Company 结构体
// 如果含有time.Time 请自行import time包
type Company struct {
      global.MODEL
      Name  string `json:"name" form:"name" gorm:"column:name;comment:企业名称;size:255;"`
      CreditCode  string `json:"creditCode" form:"creditCode" gorm:"column:credit_code;comment:统一社会信用代码;size:63;"`
      Type  *int `json:"type" form:"type" gorm:"column:type;comment:法人类型，1 人 2 公司;size:1;"`
      CompanyId  *int `json:"companyId" form:"companyId" gorm:"column:company_id;comment:企业id;size:20;"`
      LegalPersonName  string `json:"legalPersonName" form:"legalPersonName" gorm:"column:legal_person_name;comment:法人;size:255;"`
      RegStatus  string `json:"regStatus" form:"regStatus" gorm:"column:reg_status;comment:企业状态;size:31;"`
      Category  string `json:"category" form:"category" gorm:"column:category;comment:国民经济行业分类门类;size:255;"`
      CategoryBig  string `json:"categoryBig" form:"categoryBig" gorm:"column:category_big;comment:国民经济行业分类大类;size:255;"`
      CategoryMiddle  string `json:"categoryMiddle" form:"categoryMiddle" gorm:"column:category_middle;comment:国民经济行业分类中类;size:255;"`
      CategorySmall  string `json:"categorySmall" form:"categorySmall" gorm:"column:category_small;comment:国民经济行业分类小类;size:255;"`
      Industry  string `json:"industry" form:"industry" gorm:"column:industry;comment:行业;size:255;"`
      Base  string `json:"base" form:"base" gorm:"column:base;comment:省份简称;size:31;"`
      City  string `json:"city" form:"city" gorm:"column:city;comment:市;size:20;"`
      District  string `json:"district" form:"district" gorm:"column:district;comment:区;size:20;"`
      Detail  string `json:"detail" form:"detail" gorm:"column:detail;comment:天眼查数据详情;"`
}


// TableName Company 表名
func (Company) TableName() string {
  return "company"
}

