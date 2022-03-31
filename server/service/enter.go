package service

import (
	"admin/server/service/example"
	"admin/server/service/system"
)

type ServiceGroup struct {
	SystemServiceGroup   system.ServiceGroup
	ExampleServiceGroup  example.ServiceGroup
}

var ServiceGroupApp = new(ServiceGroup)
