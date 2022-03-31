package request

import (
	"admin/server/model/common/request"
	"admin/server/model/system"
)

type SysDictionarySearch struct {
	system.SysDictionary
	request.PageInfo
}
