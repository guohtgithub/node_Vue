var query = require('./dbmanger');

exports.selectList = function(req,res){
	var sql = 'select * from test';
	query(sql,null,function(err,rows,fields){
		if(err){
			res.json({
				code:'-1',
				message:'查询失败',
				info:null
			});
		}else{
			res.json({
				code:'1',
				message:'查询成功',
				info:rows
			});
		}
		res.end();
	});
}

exports.selectNavList = function(req,res){
	var sql = 'select * from navlist';	
	query(sql,null,function(err,rows,fields){
		if(err){
			res.json({
				code:'-1',
				message:'查询失败',
				info:null
			});
		}else{
			res.json({
				code:'1',
				message:'查询成功',
				info:rows
			});
		}
		res.end();
	});
}

// 注册且验证
exports.register = function(req,res){
	var sql = "select * from user where username = '" + req.body.username+"'";
	var data = {};
	query(sql,null,function(err,rows,fields){
		if(err){
			data.result = {
				code:'-1',
				message:'查询失败',
				info:null
			};
		}else{
			if(rows.length){
				data.result ={
					code:'-2',
					message:'用户存在',
					info:null
				};	
			}else{
				var sql2 = 'insert into user (username,password) values(?,?)';
				var sqlParam = [
					req.body.username,
					req.body.password
				];

				query(sql2,sqlParam,function(err,rows){
					if(err){
						data.result = {
							code:'-1',
							message:'服务器问题',
							info:null
						};
					}else{
						data.result = {
							code:'1',
							message:'注册成功',
							info:null
						};
					}
				});
			}
		}
		setTimeout(function () {
           	res.json(data);
			res.end();
        },300);
	});
}

// 登录
exports.login = function(req,res){
	var sql = "select * from user where username = '" 
		+ req.body.username+"' and password = '" +req.body.password+"'";
	query(sql,null,function(err,rows){
		if(err){
			res.json({
				code:'-1',
				message:'服务器问题',
				info:null
			});
		}else{
			console.log()
			if(rows.length == 0){
				res.json({
					code:'1',
					message:'用户不存在',
					info:null
				});
			}else{
				res.json({
					code:'1',
					message:'登录成功',
					info:null
				});
			}
		}
		res.end();
	});
}