<template>
	<div class="carousel-container">
		<section @mouseenter='_stop' @mouseleave='_begin'>
			<transition-group tag="ul" class="carousel-img-cantainer" name="fade">
				<li v-for="(item,index) in carouselList"
					:key='item.id'
					v-show="index===currentIndex">
					<img :src="item.src" alt="item.text" class="carousel-img">
				</li>
			</transition-group>
			<ul class="carousel-text" @click='changePic'>
				<li :class="{active:currentIndex === index}" 
					v-for="(item,index) in carouselList" 
					:data-index="index" 
					:key="item.id">
					{{item.text}}
				</li>
			</ul>
		</section>
		<div class="nav-list">
			<div class="header-nav">
				<ul class="bar-nav">
					<li v-for='info in navList' >{{info.text}}</li>
				</ul>
			</div>
			<div class="goods-nav">
				<ul class="goods-list">
					<li class="goots-items" v-for="goods in goodsList">
						<span></span>
						{{goods.name}}
					</li>
				</ul>
			</div>
			<div class="goods-item">
				
			</div>
		</div>
	</div>
</template>

<script>
	export default{
		name:'carousel-container',
		data(){
			return{
				src:require("@/assets/images/1.jpg"),
				carouselList:[
					{
						text:'1.第一张图片',
						src:require("@/assets/images/1.jpg"),
						id:1
					},
					{
						text:'2.第二张图片',
						src:require("@/assets/images/2.jpg"),
						id:2
					},
					{
						text:'3.第三张图片',
						src:require("@/assets/images/3.jpg"),
						id:3
					},
					{
						text:'4.第四张图片',
						src:require("@/assets/images/4.jpg"),
						id:4
					},
					{
						text:'5.第五张图片',
						src:require("@/assets/images/5.jpg"),
						id:5
					}
				],
				currentIndex:0,
				carouselTimer:null,
				navList:[
					{text:"列表一"},
					{text:"列表二"}
				],
				goodsList:[
					{name:'互联网IT'},
					{name:'广告'},
					{name:'保险'},
					{name:'贸易物流'},
					{name:'人事行政'},
					{name:'市场销售'},
					{name:'教育传媒'},
					{name:'家政服务'},
					{name:'建筑'},
					{name:'金融'},
					{name:'业余兼职'}
				]
			}
		},
		created(){
			this._begin()
		},
		methods:{
			changePic(e){
				this.currentIndex = parseInt(e.target.dataset.index);
			},
			autoPlay(){
				this.currentIndex++;
				if(this.currentIndex >= this.carouselList.length){
					this.currentIndex = 0;
				}
			},
			_begin(){
				this.carouselTimer = setInterval(this.autoPlay,4000)
			},
			_stop(){
				clearInterval(this.carouselTimer)
			}
		}
	}
</script>
<style scoped>
	.carousel-container{
		width: 1290px;
		height: 400px;
		margin: 0 auto;
	}
	.carousel-text .active{
		color: red ;
	}
	.carousel-text{
		text-align: center;
		width: 700px;
		margin: 10px auto 0;
	}
	.carousel-text li{		
		float: left;
		padding:10px;
		margin: 0 5px;
		border-radius: 5px;
		background: #330099;
		color:#fff;
	}
	.carousel-text li:hover{
		cursor:pointer;
	}
	.carousel-img-cantainer{
		width: 1290px;
		height: 400px;
		overflow: hidden;
		position:relative;
	}
	.carousel-img-cantainer li{
		width: 100%;
		height: 100%;
		position: absolute;
		left: 0;
		top: 0;
		display: flex;
		justify-content:center;
		align-items:center;
	}
	.carousel-img-cantainer li img{
		width: 100%;
	}
	.fade-enter-active, .fade-leave-active{
		transition:all 2s;
	}
	.fade-enter, .fade-leave-to{
		opacity: 0;
		transition:translateY(20px);
	}
	.carousel-container .nav-list{
		width: 175px;
		height: 435px;
		margin-left: 75px;
		position: absolute;
		top: 133px;
		z-index: 999;
	}
	.carousel-container .bar-nav{
		position: absolute;
		width: 175px;
	}
	.carousel-container .bar-nav li{
		color: red;
		float: left;
		border: 1px solid #f2f05b;
		height: 35px;
		line-height: 35px;
		width: 85px;
		text-align: center;
		background: #e6d139;
	}
	.carousel-container .nav-list li:hover{
		cursor: pointer;
		color:#fff;
		background: #000;
	}
	.carousel-container .goods-nav{
		margin-top: 37px;
	}
	.carousel-container .goods-nav span{
		padding: 10px;
	}
	.carousel-container .goods-nav li{
		height: 36.4px;
		width: 175px;
		line-height: 36.4px;
		color:#999222;
		background: #303030;
		opacity:0.8;
	}
	.carousel-container .goods-item{
		position: absolute;
		width: 852px;
		height: 400px;
		top:37px;
		left: 175px;
		opacity:0.8;
		background: #fff;
	}
</style>