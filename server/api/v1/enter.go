package v1

import (
	"admin/server/api/v1/company"
	"admin/server/api/v1/example"
	"admin/server/api/v1/system"
)

type ApiGroup struct {
	SystemApiGroup  system.ApiGroup
	ExampleApiGroup example.ApiGroup
	CompanyApiGroup company.ApiGroup
}

var ApiGroupApp = new(ApiGroup)
