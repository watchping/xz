
const express = require("express");
//引入路由器
const userRouter = require("./routers/user.js");
const productRouter = require("./routers/product.js");
const cartRouter = require("./routers/cart.js");
const indexRouter=require('./routers/index');

const session = require("express-session");
const cookieParser = require("cookie-parser");
 

const app = express();
app.use(express.json()); //在其他路由中间件前（尽可能靠前，以能够通过bodyPaser获取req.body）
app.use(express.urlencoded({ extended: false }));
// 使用 session 中间件
app.use(session({ 
    secret: 'zjffapp',// 对session id 相关的cookie 进行签名
    resave : true,
    saveUninitialized: false, // 是否保存未初始化的会话
    cookie : {
        maxAge : 1000 * 60 * 3, // 设置 session 的有效时间，单位毫秒
    },
}));
app.use(cookieParser("zjffapp"));

//托管静态资源
app.use(express.static("public"));

//注册路由,建议放在其他中间件的后面
app.use("/user",userRouter);
app.use("/product",productRouter);
app.use("/cart",cartRouter);
app.use(indexRouter);

const port = 8080;
app.listen(port, () => console.log(`XZ App listening oe port:${port}`));


