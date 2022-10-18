package company

import (
	"admin/server/global"
	"admin/server/model/company"
	"admin/server/model/common/request"
    companyReq "admin/server/model/company/request"
)

type CompanyService struct {
}

// CreateCompany 创建Company记录
// Author [piexlmax](https://github.com/piexlmax)
func (companyService *CompanyService) CreateCompany(company company.Company) (err error) {
	err = global.DB.Create(&company).Error
	return err
}

// DeleteCompany 删除Company记录
// Author [piexlmax](https://github.com/piexlmax)
func (companyService *CompanyService)DeleteCompany(company company.Company) (err error) {
	err = global.DB.Delete(&company).Error
	return err
}

// DeleteCompanyByIds 批量删除Company记录
// Author [piexlmax](https://github.com/piexlmax)
func (companyService *CompanyService)DeleteCompanyByIds(ids request.IdsReq) (err error) {
	err = global.DB.Delete(&[]company.Company{},"id in ?",ids.Ids).Error
	return err
}

// UpdateCompany 更新Company记录
// Author [piexlmax](https://github.com/piexlmax)
func (companyService *CompanyService)UpdateCompany(company company.Company) (err error) {
	err = global.DB.Save(&company).Error
	return err
}

// GetCompany 根据id获取Company记录
// Author [piexlmax](https://github.com/piexlmax)
func (companyService *CompanyService)GetCompany(id uint) (err error, company company.Company) {
	err = global.DB.Where("id = ?", id).First(&company).Error
	return
}

// GetCompanyInfoList 分页获取Company记录
// Author [piexlmax](https://github.com/piexlmax)
func (companyService *CompanyService)GetCompanyInfoList(info companyReq.CompanySearch) (err error, list interface{}, total int64) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.DB.Model(&company.Company{})
    var companys []company.Company
    // 如果有条件搜索 下方会自动创建搜索语句
    if info.Name != "" {
        db = db.Where("name LIKE ?","%"+ info.Name+"%")
    }
    if info.CreditCode != "" {
        db = db.Where("credit_code = ?",info.CreditCode)
    }
    if info.Category != "" {
        db = db.Where("category = ?",info.Category)
    }
	err = db.Count(&total).Error
	if err!=nil {
    	return
    }
	err = db.Limit(limit).Offset(offset).Find(&companys).Error
	return err, companys, total
}
