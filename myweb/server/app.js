var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require('body-parser');
var dbresult = require('./dbresult');

app.use(bodyParser.urlencoded({extended:false}));

app.all('*',function(req,res,next){
	var origin = req.headers.origin;
	res.header('Access-Control-Allow-Origin', origin);
	res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, token,sign');
	res.header('Access-Control-Allow-Credentials', true);
	res.header('Access-Control-Allow-Methods', 'GET, POST, PUT, OPTIONS, DELETE');
	next();
});

app.get('/nav',function(req,res){
	dbresult.selectList(req,res);
});

app.get('/navlist',function(req,res){
	dbresult.selectNavList(req,res);
});

app.post('/register',function(req,res){
	dbresult.register(req,res);
})

app.post('/login',function(req,res){
	dbresult.login(req,res);
})

var server = app.listen(3000,function(){
	var host = server.address().address;
	var port = server.address().port;
	console.log('server running at http://%s:%s',host,port)
});