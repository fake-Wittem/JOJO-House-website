/* 入口文件 */

// 导入express框架
const express = require('express')

//创建服务器对象
const app = express()

//导入cors跨域中间件
const cors = require('cors')
app.use(cors())

//配置解析application/x-www-form-urlencoded格式表单数据的中间件
app.use(express.urlencoded({ extended: false }))

//封装res.cc函数
app.use((req, res, next) => {
    //status默认值为1表示失败
    res.cc = function (err, status = 1) {
        res.send({
            status,
            //判断err是错误对象还是字符串
            message: err instanceof Error ? err.message : err,
        })
    }
    next()
})

//导入解析Token的中间件
const expressJWT = require('express-jwt')

//导入全局配置文件
const config = require('./config')

//指定哪些接口不需要进行Token的身份认证
app.use(expressJWT({ secret: config.jwtSecretKey }).unless({ path: [/^\/api/] }))

// 定义错误中间件
app.use(function (err, req, res, next) {
    // 捕获身份认证失败的错误
    if (err.name === 'UnauthorizedError') return res.cc('身份认证失败！')
})


//导入并使用用户路由模块
const userRouter = require('./router/user')
app.use('/api', userRouter)

// 启动服务器
app.listen(3007, () => {
    console.log('server running at http://127.0.0.1:3007')
})