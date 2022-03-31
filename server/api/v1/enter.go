package v1

import (
	"admin/server/api/v1/example"
	"admin/server/api/v1/system"
)

type ApiGroup struct {
	SystemApiGroup   system.ApiGroup
	ExampleApiGroup  example.ApiGroup
}

var ApiGroupApp = new(ApiGroup)
