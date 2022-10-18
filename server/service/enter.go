package service

import (
	"admin/server/service/company"
	"admin/server/service/example"
	"admin/server/service/system"
)

type ServiceGroup struct {
	SystemServiceGroup  system.ServiceGroup
	ExampleServiceGroup example.ServiceGroup
	CompanyServiceGroup company.ServiceGroup
}

var ServiceGroupApp = new(ServiceGroup)
