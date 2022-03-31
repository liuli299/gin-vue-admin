package request

import (
	"admin/server/model/{{.Package}}"
	"admin/server/model/common/request"
)

type {{.StructName}}Search struct{
    {{.Package}}.{{.StructName}}
    request.PageInfo
}
