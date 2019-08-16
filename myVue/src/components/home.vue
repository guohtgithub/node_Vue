<template>
	<div id="home">
		<Top :logo="logoMsg" :loginMsg="flag"></Top>
		<div class="home">
			<div class="site-header">
				<div class="site-container">
					<div class="header-log">
						<img src="../assets/images/logo.jpg" alt="">
					</div>
					<div class="header-nav">
						<ul class="nav-list">
							<li v-for="item in navList">
								<span>{{item.text}}</span>
							</li>
						</ul>
					</div>
					<div class="header-search">
						<div class="forms">
							<input type="search" class="search">
							<input type="submit" class="search-btn" value="search">
							<div class="hot-word">
								<span v-for='hot in hotWord'>{{hot.words}}</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<Slider></Slider>
			<Mockvue></Mockvue>
		</div>
		<Foot></Foot>
		<Tool></Tool>
	</div>
</template>
<style scope>
	.site-header{
		height: 100px;
		z-index: 100;
		position: relative;
	}
	.site-header .site-container{
		position: relative;
		width: 1290px;
		margin: 0 auto;
	}
	.site-header .header-log{
		float: left;
		width: 70px;
		margin-top:20px;
	}
	.site-header img:hover{
		border: 1px solid red;
		cursor: pointer;
	}
	.site-header .header-nav{
		float: left;
	}
	.site-header .nav-list{
		float: left;
		position: relative;
		z-index: 90px;
		width: 880;
		height: 88px;
		margin: 0;
		padding: 12px 0 0 30px;
		font-size: 16px;
		margin-left: 150px;
	}
	.site-header li{
		float: left;
		position: relative;
		width: 50px;
		padding-left: 15px;
		height: 100%;
		line-height: 80px;
	}
	.site-header li:hover{
		cursor: pointer;
		color:red;
	}
	.site-header .header-search{
		width: 300px;
		float: right;
		margin-top: 20px;
	}
	.site-header .forms{
		position: relative;
		height: 50px;
		line-height: 50px;
	}
	.site-header .search{
		position: absolute;
		top: 0;
		right: 51px;
		z-index: 1;
		width: 220px;
		height: 48px;
		padding: 0 10px;
		border:1px solid #e0e0e0;
		font-size: 14px;
		line-height: 48px;
		outline: 0;
		transition:all .2s;
		-webkit-transition:all .2s;
	}
	input[type='search']{
		box-sizing:content-box;
		-webkit-box-sizing:content-box;
		-webkit-appearance:textfield;
	}
	button, input{
		line-height: normal;
	}
	button, input,select,textarea{
		font-size: 100%;
		margin: 0;
		vertical-align: baseline;
		*vertical-align: middle;
	}
	.site-header .search-btn{
		position: absolute;
		right: 0;
		top: 0;
		z-index: 2;
		width: 52px;
		height: 50px;
		border:1px solid #e0e0e0;
		font-size: 24px;
		line-height: 25px;
		background: #fff;
		color:#616161;
		outline: 0;
		transition:all .2s;
	}
	.site-header .search-btn:hover{
		cursor: pointer;
		background: red;
		color:#fff;
	}
	.site-header .hot-word{
		display: block;
		position: absolute;
		top: 0px;
		right: 62px;
		z-index: 2;
		text-align: right;
	}
	.site-header .hot-word span{
		display: inline-block;
		margin-left: 5px; 
		padding: 0 5px;
		font-size: 12px;
		background: #eee;
		color: #757575;
		transition:all .2s;
		line-height: 25px;
	}
	.site-header .hot-word span:hover{
		cursor: pointer;
		color: red;
		background: blue;
	}
</style>
<script>
	import Top from './header/headerList.vue'
	import Foot from './footer/Footer.vue'
	import Slider from './slider/swiper_new.vue'
	import Tool from './tool/toolNav.vue'
	import Mockvue from './mockvue.vue'
	export default{
		components:{
			Top,
			Foot,
			Slider,
			Tool,
			Mockvue
		},
		data(){
			return {
				login:'',
				logoMsg:'Login',
				flag:false,
				navList:[
					{text:'手机'},
					{text:'电视'},
					{text:'电脑'},
					{text:'家电'},
					{text:'新品'},
					{text:'路由器'},
					{text:'硬件'},
					{text:'服务'},
					{text:'社区'}
				],
				hotWord:[
					{words:"MIX"},
					{words:"NOTE"}
				]
			}
		},
		created(){
			this.ckLogin();
		},
		methods:{
			ckLogin(){
				let self = this;
			}
		}
	}
</script>