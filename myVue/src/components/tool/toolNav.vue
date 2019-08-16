<template>
	<div class="tools">
		<div class="rightNva">
			<ul class="toolBar">
				<li v-for="item in toolList">
					<div class="bar-img">
						<img :src="item.src" alt="" class="original-img">
					</div>
					<p class="bar-text">{{item.text}}</p>
				</li>
			</ul>
		</div>
	</div>
</template>
<style scoped>
	.tools{
		position: fixed;
		bottom:200px;
		right: 0;
		z-index: 9999;
	}
	.tools .rightNva{
		padding: 0;
		margin: 0;
		border-top: 1px solid #f5f5f5;
	}
	.tools li{
		position: relative;
		display: block;
		width: 80px;
		height: 90px;
		list-style: none;
		background-color: #fff;
		border:1px solid #f5f5f5;
		border-top: none;
		text-align: center;
	}
	.tools li:hover{
		cursor: pointer;
	}
	.tools .bar-img{
		position: relative;
		width: 40px;
		height: 40px;
		padding-top:  10px;
		margin:0 0 0 20px;
	}
	.tools .bar-img img{
		width: 100%;
		height: 100%;
		border:none;
	}
	.tools .bar-text{
		color:#757575;
		margin-top: 10px;
	}
	.tools .bar-text:hover{
		color:#a9f1f9;
	}
	.tools .bar-img img:hover{
		border:1px solid #a9f1f9;
	}
</style>
<script>
	export default{
		name:'tools',
		data(){
			return {
				toolList:[
					{text:'计算器',src:require('@/assets/images/nav1.jpg')},
					{text:'个人中心',src:require('@/assets/images/nav2.jpg')},
					{text:'客服',src:require('@/assets/images/nav3.jpg')},
					{text:'App下载',src:require('@/assets/images/nav4.jpg')},
					{text:'问题解答',src:require('@/assets/images/nav5.jpg')}
				]
			}
		}
	}
</script>