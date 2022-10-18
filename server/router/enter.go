package router

import (
	"admin/server/router/company"
	"admin/server/router/example"
	"admin/server/router/system"
)

type RouterGroup struct {
	System  system.RouterGroup
	Example example.RouterGroup
	Company company.RouterGroup
}

var RouterGroupApp = new(RouterGroup)
