<template>
	<header id="headers">
		<div class="header">
			<div id="logo">
				<router-link to='/login'>{{logo}}</router-link>
				<div class="login-in" v-if='loginMsg'>
					<p>{{username}}</p>
					<p><router-link to='/loginout'>Login Out</router-link></p>
				</div>
			</div>
			<ul class="nav">
				<li v-for="nav in navs">{{nav.navname}}</li>
			</ul>
		</div>
	</header>
</template>

<style scope>
	#headers{
		height: 70px;
	    background: #2c3e50;
	    color: #d8d8d8;
	    font-size: 20px;
	    line-height: 70px;
	}
	.header{
		width: 1290px;
		margin: 0 auto;
		height: 70px;
		line-height: 70px;
		background: #2c3e50;
	    color: #d8d8d8;
	    font-size: 20px;
	}
	#logo{
		width: 200px;
		text-align: center;
		float: left;
	}

	.login-in{
		display: none;
		position: absolute;
		background-color: #f9f9f9;
		min-width: 160px;
		box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		padding:0px 4px 12px;
	}
	.login-in p{
		height: 40px;
		line-height: 40px;
	}
	#logo:hover .login-in{
		display: block;
	}
	#logo a{
		color:#d8d8d8;
		text-decoration: none;
	}
	#logo a:hover{
		color:#fff;
	}
	.nav{
		height: 100%;
		position: relative;		
		display: inline-flex;
		float: right;
    	right: 70px;
	}
	.nav li{
		margin: 0 10px;
		cursor:pointer;
	}
	.nav li:hover{
		color:#fff;
	}
</style>

<script>
	export default{
		name:'headers',
		data(){
			return{
				navs:[],
				username:'guoht'
			}
		},
		props:['logo','loginMsg'],
		created(){
			this.getNavList();
		},
		methods:{
			clearData(){
				let self = this;
				self.navs = [];
			},
			getNavList(){
				let self = this;
				this.axios.get('http://localhost:3000/navlist').then(function(res){
					self.navs = res.data.info;
				}).catch(function(err){
					console.log(err);
				})
			}
		}
	}
</script>