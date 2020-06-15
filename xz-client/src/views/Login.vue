<template>
    <div id="bg" >
        <el-row>
            <el-col :span="8" offset="8"  class="form-div ">
                <h3>学子商城</h3>
                <el-form ref="form" :model="form" label-width="80px" style="margin-bottom: 1rem">
                        <el-input v-model="form.username" placeholder="请输入用户名"></el-input>
                        <el-input v-model="form.password" placeholder="请输入密码"></el-input>
                        <el-button type="primary" @click="onSubmit" style="width: 100%">登  陆</el-button>
                </el-form>
            </el-col>
        </el-row>
    </div>
</template>

<script>

    import { setLocalStorage } from "@/utils/utils";
    export default {
        name: 'Login',
        data() {
            return {
                expireSeconds: 5,
                form: {
                    username: '',
                    password: ''
                }
            }
        },
        methods: {
            onSubmit() {
                var that = this;
                this.axios({
                    method: 'post',
                    url: 'http://localhost:5050/user/login',
                    data: {
                        uname: this.form.username,
                        upwd: this.form.password
                    }
                })
                    .then(function (response) {
                        if (response.status === 200) {
                            if (response.data.code === 200) {
                                setLocalStorage('username',that.form.username, new Date().getTime() + (that.expireSeconds * 1000))
                                that.$router.push({path: 'product'});
                            }
                        }
                    })
                    .catch(function (error) {
                        console.log(error);
                    });
            }
        }
    }
</script>

<style>

    #bg:before {
        content: "";
        background-image: url(~@/assets/login.jpg);
        background-repeat: no-repeat;
        background-size: 100% 100%;
        width: 100%;
        height: 100%;
        position: absolute;
        top: 0;
        left: 0;
        z-index: -1;
        -webkit-filter: blur(5px);
        filter: blur(0px);
    }

    .form-div {
        padding: 15px 30px 15px 30px;
        border-radius: 10px;
        border: 1px solid #ddd;
        margin-top: 12%;
        background-color: rgba(0, 0, 0, 0.2)
    }
    .form-div h3{ font-size: 2rem; color: #f1f1f1; word-spacing: .3rem}
    .form-div label{width: 0!important;}
    .form-div input{background-color:rgba(20,20,10,0.5) ;color:#fff; margin-bottom: 1.2rem}
    .form-div:before {
        background: #444;
        content: "";
        width: 100%;
        height: 100%;
        opacity: 0.2;
        position: absolute;
        top: 0;
        left: 0;
        z-index: -1;
        -webkit-filter: blur(5px);
        filter: blur(2px);
    }

    .form-div:hover {
        background-color: rgba(0, 0, 0, 0.2)
    }
</style>
