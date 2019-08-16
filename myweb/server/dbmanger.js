var mysql = require('mysql');
// var httpResult = require('./httpResult');

var pool = mysql.createPool({
	host:'localhost',
	user:'root',
	password:'123456',
	port:'3306',
	database:'nodeDB'
});

/*封装数据库操作方法query--用于增删改查*/
var query=function(sql,sqlParams,callback){
  //获取数据库的连接
  pool.getConnection(function(err,conn){
    if(err){
      //错误回调
      callback(err,null,null);
    }else{
      //连接成功的情况
      conn.query(sql,sqlParams,function(qerr,vals,fields){
        //释放连接
        conn.release();
        //事件驱动回调
        callback(qerr,vals,fields);
      });
    }
  });
};
/*模块输出*/
module.exports=query;