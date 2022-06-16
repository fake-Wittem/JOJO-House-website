/* 用户路由模块 */

//导入express框架
const express = require('express')

// 创建路由对象
const router = express.Router()

//导入用户路由模块处理函数
const user_handle = require('../router_handler/user')

// 注册新用户
router.post('/reguser', user_handle.regUser)

// 登录
router.post('/login', user_handle.login)

// 将路由对象共享出去
module.exports = router