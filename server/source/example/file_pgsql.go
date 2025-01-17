package example

import (
	"admin/server/global"
	"admin/server/model/example"
	"github.com/pkg/errors"
	"gorm.io/gorm"
)

var FilePgsql = new(filePgsql)

type filePgsql struct{}

func (f *filePgsql) TableName() string {
	return "exa_file_upload_and_downloads"
}

func (f *filePgsql) Initialize() error {
	entities := []example.ExaFileUploadAndDownload{
		{Name: "10.png", Url: "https://qmplusimg.henrongyi.top/gvalogo.png", Tag: "png", Key: "158787308910.png"},
		{Name: "logo.png", Url: "https://qmplusimg.henrongyi.top/1576554439myAvatar.png", Tag: "png", Key: "1587973709logo.png"},
	}
	if err := global.DB.Create(&entities).Error; err != nil {
		return errors.Wrap(err, f.TableName()+"表数据初始化失败!")
	}
	return nil
}

func (f *filePgsql) CheckDataExist() bool {
	if errors.Is(global.DB.Where("name = ? AND key = ?", "logo.png", "1587973709logo.png").First(&example.ExaFileUploadAndDownload{}).Error, gorm.ErrRecordNotFound) {
		return false
	}
	return true
}
