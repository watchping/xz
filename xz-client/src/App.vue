<template>
  <div id="app">
    <router-view />
  </div>
</template>
<script>
  import { getLocalStorage } from "@/utils/utils";
  export default {
    components: {
    },
    computed:{
    },
    data() {
      return {
      };
    },
    mounted() {
      this.sessionCheck();
    },
    methods: {
      sessionCheck(){
        setInterval(() => {
          var username = getLocalStorage('username');
          if(username == null && this.$route.name != 'Login'){
            alert('登录失效，请重新登录！');
            this.$router.push({path: 'login'});
          }
        }, 1000);
      }
    },
    destroyed(){
    },
  };
</script>
<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
</style>
