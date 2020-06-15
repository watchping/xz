const mysql = require("mysql");
//建立连接池对象
let pool  = mysql.createPool({
  connectionLimit : 10,
  host:     "192.168.157.128",
  port:     3306,
  user:     "root",
  password: "123456",
  database: "xz",
  multipleStatements: true  //允许query执行多条SQL语句
});
module.exports=pool;