package request

import (
	"admin/server/model/common/request"
	"admin/server/model/system"
)

type SysOperationRecordSearch struct {
	system.SysOperationRecord
	request.PageInfo
}
