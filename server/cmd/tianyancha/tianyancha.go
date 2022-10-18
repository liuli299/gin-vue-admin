package main

import (
	"admin/server/core"
	"admin/server/global"
	"admin/server/initialize"
	"admin/server/utils/tianyancha"
	"go.uber.org/zap"
	"io/ioutil"
	"os"
	"strings"
)

//go:generate go env -w GO111MODULE=on
//go:generate go env -w GOPROXY=https://goproxy.cn,direct
//go:generate go mod tidy
//go:generate go mod download

// @title Swagger Example API
// @version 0.0.1
// @description This is a sample Server pets
// @securityDefinitions.apikey ApiKeyAuth
// @in header
// @name x-token
// @BasePath /
func main() {
	global.VP = core.Viper() // 初始化Viper
	global.LOG = core.Zap()  // 初始化zap日志库
	zap.ReplaceGlobals(global.LOG)
	global.DB = initialize.Gorm() // gorm连接数据库
	initialize.DBList()
	if global.DB != nil {
		initialize.RegisterTables(global.DB) // 初始化表
		// 程序结束前关闭数据库链接
		db, _ := global.DB.DB()
		defer db.Close()
	}

	runCompanyInfo()
}

func runCompanyInfo()  {
	txt, err := readFile("./list.txt")
	if err != nil {
		global.LOG.Error("runCompanyInfo", zap.Error(err))
	}
	for _, name := range txt {
		name = strings.Trim(name, "")
		if len(name) != 0 {
			rsp, err := tianyancha.GetCompanyInfo(name)
			if err != nil {
				global.LOG.Error("runCompanyInfo", zap.Error(err))
			} else {
				println(name, "success", rsp.ID)
			}
		}
	}
}

// 全部文件
func readFile(path string) ([]string , error) {
	fileHanle,err := os.OpenFile(path, os.O_RDONLY, 0666)
	if err != nil {
		return nil, err
	}

	defer fileHanle.Close()

	readBytes, err := ioutil.ReadAll(fileHanle)
	if err != nil {
		return nil, err
	}

	return strings.Split(string(readBytes), "\n"), nil
}
