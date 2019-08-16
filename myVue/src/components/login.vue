<template>
	<div class="login">
		<Top :logo="logoMsg"></Top>
		<div class="container">
			<div class="content">
				<div class="logo">
					<img class='mr-350' src="../assets/images/home.jpg" alt="" />
				</div>
				<div class="login-form">
					<div class="form">
						<div class="title-msg">
							<h1>Sign in to Web</h1>
						</div>
						<div class="login-body">
							<label for="username">Username、Email or TellPhone</label>
							<input type="text" id="username" v-model="username" class="form-input">
							<label for="password">
								Password
								<router-link to='/reset_password'>Forget Password?</router-link>
							</label>
							<input type="text" id="password" class="form-input" v-model='password'>
							<input type="submit" class="btn-primary btn" @click='login' value='Sign in'>
						</div>
						<div class="create-account tl fontcolor" v-if='showFlag'>
							Please confirm whether the complete or Password is the same.
						</div>
					</div>
					<p class="create-account">
						New to User?
						<router-link to='/register'>Create an account</router-link>
					</p>
				</div>
			</div>
		</div>
		<Foot></Foot>
	</div>
</template>

<script>
	import Top from './header/headerList.vue'
	import Foot from './footer/Footer.vue'
	import '../assets/css/login.css'
	import qs from 'qs'

	export default{
		components:{
			Top,
			Foot
		},
		data(){
			return {
				logoMsg:'Hello Welcome!',
				username:'',
				password:'',
				showFlag:false
			}
		},
		methods:{
			clearData(){
				let self = this;
				self.logoMsg = '';
			},
			login(){
				let self = this;
				if(self.username && self.password){
					this.axios.post('http://localhost:3000/login',qs.stringify({
						username:self.username,
						password:self.password
					})).then(function(res){
            console.log(res,'login')
						if(res.data.message === '登录成功'){
							window.location.href = '/';
						}else{
							self.showFlag = true;
							setTimeout(function(){
								self.showFlag = false;
							},1000)
						}

					}).catch(function(err){
						self.showFlag = true;
						setTimeout(function(){
							self.showFlag = false;
						},1000)
					})
				}else{
					self.showFlag = true;
					setTimeout(function(){
						self.showFlag = false;
					},1000)
				}
			}
		}
	}
</script>
