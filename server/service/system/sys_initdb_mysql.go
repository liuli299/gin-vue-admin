package system

import (
	"fmt"
	"path/filepath"

	"admin/server/utils"

	"admin/server/config"
	"admin/server/global"
	model "admin/server/model/system"
	"admin/server/model/system/request"
	"admin/server/source/example"
	"admin/server/source/system"
	uuid "github.com/satori/go.uuid"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

// writeMysqlConfig mysql回写配置
// Author [SliverHorn](https://github.com/SliverHorn)
// Author [songzhibin97](https://github.com/songzhibin97)
func (initDBService *InitDBService) writeMysqlConfig(mysql config.Mysql) error {
	global.CONFIG.Mysql = mysql
	cs := utils.StructToMap(global.CONFIG)
	for k, v := range cs {
		global.VP.Set(k, v)
	}
	global.VP.Set("jwt.signing-key", uuid.NewV4().String())
	return global.VP.WriteConfig()
}

// initMysqlDB 创建数据库并初始化 mysql
// Author [piexlmax](https://github.com/piexlmax)
// Author [SliverHorn](https://github.com/SliverHorn)
// Author: [songzhibin97](https://github.com/songzhibin97)
func (initDBService *InitDBService) initMysqlDB(conf request.InitDB) error {
	dsn := conf.MysqlEmptyDsn()
	createSql := fmt.Sprintf("CREATE DATABASE IF NOT EXISTS `%s` DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci;", conf.DBName)
	if err := initDBService.createDatabase(dsn, "mysql", createSql); err != nil {
		return err
	} // 创建数据库

	mysqlConfig := conf.ToMysqlConfig()
	if mysqlConfig.Dbname == "" {
		return nil
	} // 如果没有数据库名, 则跳出初始化数据

	if db, err := gorm.Open(mysql.New(mysql.Config{
		DSN:                       mysqlConfig.Dsn(), // DSN data source name
		DefaultStringSize:         191,               // string 类型字段的默认长度
		SkipInitializeWithVersion: true,              // 根据版本自动配置
	}), &gorm.Config{DisableForeignKeyConstraintWhenMigrating: true}); err != nil {
		return nil
	} else {
		global.DB = db
	}

	if err := initDBService.initTables(); err != nil {
		global.DB = nil
		return err
	}

	if err := initDBService.initMysqlData(); err != nil {
		global.DB = nil
		return err
	}

	if err := initDBService.writeMysqlConfig(mysqlConfig); err != nil {
		return err
	}

	global.CONFIG.AutoCode.Root, _ = filepath.Abs("..")
	return nil
}

// initData mysql 初始化数据
// Author [SliverHorn](https://github.com/SliverHorn)
// Author: [songzhibin97](https://github.com/songzhibin97)
func (initDBService *InitDBService) initMysqlData() error {
	return model.MysqlDataInitialize(
		system.Api,
		system.User,
		system.Casbin,
		system.BaseMenu,
		system.Authority,
		system.Dictionary,
		system.UserAuthority,
		system.DataAuthorities,
		system.AuthoritiesMenus,
		system.DictionaryDetail,
		system.ViewAuthorityMenuMysql,
		example.FileMysql,
	)
}
