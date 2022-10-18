<template>
  <div>
    <div class="gva-form-box">
      <el-form :model="formData" label-position="right" label-width="80px">
        <el-form-item label="企业名称:">
          <el-input v-model="formData.name" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="统一社会信用代码:">
          <el-input v-model="formData.creditCode" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="法人类型，1 人 2 公司:">
          <el-input v-model.number="formData.type" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="企业id:">
          <el-input v-model.number="formData.companyId" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="法人:">
          <el-input v-model="formData.legalPersonName" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="企业状态:">
          <el-input v-model="formData.regStatus" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="国民经济行业分类门类:">
          <el-input v-model="formData.category" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="国民经济行业分类大类:">
          <el-input v-model="formData.categoryBig" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="国民经济行业分类中类:">
          <el-input v-model="formData.categoryMiddle" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="国民经济行业分类小类:">
          <el-input v-model="formData.categorySmall" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="行业:">
          <el-input v-model="formData.industry" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="省份简称:">
          <el-input v-model="formData.base" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="市:">
          <el-input v-model="formData.city" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="区:">
          <el-input v-model="formData.district" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="天眼查数据详情:">
          <el-input v-model="formData.detail" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item>
          <el-button size="mini" type="primary" @click="save">保存</el-button>
          <el-button size="mini" type="primary" @click="back">返回</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Company'
}
</script>

<script setup>
import {
  createCompany,
  updateCompany,
  findCompany
} from '@/api/company'

// 自动获取字典
import { getDictFunc } from '@/utils/format'
import { useRoute, useRouter } from "vue-router"
import { ElMessage } from 'element-plus'
import { ref } from 'vue'
const route = useRoute()
const router = useRouter()
const type = ref('')
const formData = ref({
        name: '',
        creditCode: '',
        type: 0,
        companyId: 0,
        legalPersonName: '',
        regStatus: '',
        category: '',
        categoryBig: '',
        categoryMiddle: '',
        categorySmall: '',
        industry: '',
        base: '',
        city: '',
        district: '',
        detail: '',
        })

// 初始化方法
const init = async () => {
 // 建议通过url传参获取目标数据ID 调用 find方法进行查询数据操作 从而决定本页面是create还是update 以下为id作为url参数示例
    if (route.query.id) {
      const res = await findCompany({ ID: route.query.id })
      if (res.code === 0) {
        formData.value = res.data.recompany
        type.value = 'update'
      }
    } else {
      type.value = 'create'
    }
}

init()
// 保存按钮
const save = async() => {
      let res
      switch (type.value) {
        case 'create':
          res = await createCompany(formData.value)
          break
        case 'update':
          res = await updateCompany(formData.value)
          break
        default:
          res = await createCompany(formData.value)
          break
      }
      if (res.code === 0) {
        ElMessage({
          type: 'success',
          message: '创建/更改成功'
        })
      }
}

// 返回按钮
const back = () => {
    router.go(-1)
}

</script>

<style>
</style>
