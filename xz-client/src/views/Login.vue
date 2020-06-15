<template>
  <div>
    <el-row>
      <el-col :span="10"></el-col>
      <el-col :span="4">
        <el-form ref="form" :model="form" label-width="80px">
          <el-form-item label="用户名">
            <el-input v-model="form.username"></el-input>
          </el-form-item>
          <el-form-item label="密码">
            <el-input v-model="form.password"></el-input>
          </el-form-item>
          <el-form-item>
            <el-button type="primary" @click="onSubmit">登陆</el-button>
          </el-form-item>
        </el-form>
      </el-col>
      <el-col :span="10"></el-col>
    </el-row>
  </div>
</template>

<script>

  export default {
    name: 'Login',
    data() {
      return {
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
            console.log(response);
            that.$router.push({ path: 'product' });
          })
          .catch(function (error) {
            console.log(error);
          });
      }
    }
  }
</script>
