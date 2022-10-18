package company

import (
	"admin/server/global"
    "admin/server/model/company"
    "admin/server/model/common/request"
    companyReq "admin/server/model/company/request"
    "admin/server/model/common/response"
    "admin/server/service"
    "github.com/gin-gonic/gin"
    "go.uber.org/zap"
)

type CompanyApi struct {
}

var companyService = service.ServiceGroupApp.CompanyServiceGroup.CompanyService


// CreateCompany 创建Company
// @Tags Company
// @Summary 创建Company
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body company.Company true "创建Company"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /company/createCompany [post]
func (companyApi *CompanyApi) CreateCompany(c *gin.Context) {
	var company company.Company
	_ = c.ShouldBindJSON(&company)
	if err := companyService.CreateCompany(company); err != nil {
        global.LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteCompany 删除Company
// @Tags Company
// @Summary 删除Company
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body company.Company true "删除Company"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /company/deleteCompany [delete]
func (companyApi *CompanyApi) DeleteCompany(c *gin.Context) {
	var company company.Company
	_ = c.ShouldBindJSON(&company)
	if err := companyService.DeleteCompany(company); err != nil {
        global.LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteCompanyByIds 批量删除Company
// @Tags Company
// @Summary 批量删除Company
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除Company"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /company/deleteCompanyByIds [delete]
func (companyApi *CompanyApi) DeleteCompanyByIds(c *gin.Context) {
	var IDS request.IdsReq
    _ = c.ShouldBindJSON(&IDS)
	if err := companyService.DeleteCompanyByIds(IDS); err != nil {
        global.LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateCompany 更新Company
// @Tags Company
// @Summary 更新Company
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body company.Company true "更新Company"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /company/updateCompany [put]
func (companyApi *CompanyApi) UpdateCompany(c *gin.Context) {
	var company company.Company
	_ = c.ShouldBindJSON(&company)
	if err := companyService.UpdateCompany(company); err != nil {
        global.LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindCompany 用id查询Company
// @Tags Company
// @Summary 用id查询Company
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query company.Company true "用id查询Company"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /company/findCompany [get]
func (companyApi *CompanyApi) FindCompany(c *gin.Context) {
	var company company.Company
	_ = c.ShouldBindQuery(&company)
	if err, recompany := companyService.GetCompany(company.ID); err != nil {
        global.LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"recompany": recompany}, c)
	}
}

// GetCompanyList 分页获取Company列表
// @Tags Company
// @Summary 分页获取Company列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query companyReq.CompanySearch true "分页获取Company列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /company/getCompanyList [get]
func (companyApi *CompanyApi) GetCompanyList(c *gin.Context) {
	var pageInfo companyReq.CompanySearch
	_ = c.ShouldBindQuery(&pageInfo)
	if err, list, total := companyService.GetCompanyInfoList(pageInfo); err != nil {
	    global.LOG.Error("获取失败!", zap.Error(err))
        response.FailWithMessage("获取失败", c)
    } else {
        response.OkWithDetailed(response.PageResult{
            List:     list,
            Total:    total,
            Page:     pageInfo.Page,
            PageSize: pageInfo.PageSize,
        }, "获取成功", c)
    }
}
