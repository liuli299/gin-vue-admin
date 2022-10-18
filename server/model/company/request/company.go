package request

import (
	"admin/server/model/company"
	"admin/server/model/common/request"
)

type CompanySearch struct{
    company.Company
    request.PageInfo
}
