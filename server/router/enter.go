package router

import (
	"admin/server/router/example"
	"admin/server/router/system"
)

type RouterGroup struct {
	System   system.RouterGroup
	Example  example.RouterGroup
}

var RouterGroupApp = new(RouterGroup)
