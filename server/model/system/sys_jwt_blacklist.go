package system

import (
	"admin/server/global"
)

type JwtBlacklist struct {
	global.MODEL
	Jwt string `gorm:"type:text;comment:jwt"`
}
