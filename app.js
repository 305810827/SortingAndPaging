//需要npm install引入的依赖包
// 1.express 框架模块
// 2.art-template 模板引擎
// 3.express-art-template 框架模板
// 4.oracledb
const express = require('express');
const oracledb = require('./oracle');
const url = require("url");
//创建服务器应用
let app = express();
//app.use中间件，类似于拦截器，需要用next()
//设置静态目录
app.use(express.static('public'));
//引入框架-模板
app.engine("html", require("express-art-template"));

//sql查询的结果变量
let resultList;
//sql查询
oracledb.query("select * from goods", function (result) {
    resultList = result;
})
//挂载路由
//首页
app.get("/", function (req, res) {
    //返回前端html页面，并返回数据渲染页面
    res.render("listSort.html", {
        resultList: resultList   //listSort.html文件中的name占位符为listSort
    })
})
/* 升序降序请求接口 */
app.get("/sort", function (req, res) {
    //获取url对象
    let parseObj = url.parse(req.url,true);
    //使用url对象的属性query取对应的url参数
    if (parseObj.query.mode == 'asc') {
        //使用封装好的oracle对象的query方法执行sql语句
        oracledb.query("select * from goods order by price asc", function (result) {
            resultList = result;
            //重定向到路由为/的接口
            res.redirect('/');
        })
    } else if (parseObj.query.mode == 'desc') {
        oracledb.query("select * from goods order by price desc", function (result) {
            resultList = result;
            res.redirect('/');
        })
    }
})
/* 开启服务器 */
app.listen(3000, function () {
    console.log("服务器在3000端口启动");
})