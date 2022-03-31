package response

import "admin/server/config"

type SysConfigResponse struct {
	Config config.Server `json:"config"`
}
