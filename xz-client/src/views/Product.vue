<template>
  <div>
    <el-row>
      <el-col :span="6" v-for="(product) in productList" :key="product.lid">
        <el-card body-style="{ padding: '20px' }">
          <img :src=product.pic
               class="image">
          <div style="padding: 14px;">
            <span>{{product.title}}</span>
            <div class="bottom clearfix">
              <el-button type="text" class="button" @click="addCart(product)">加入购物车</el-button>
            </div>
          </div>
        </el-card>
      </el-col>
    </el-row>
    <el-pagination
      @size-change="handleSizeChange"
      @current-change="handleCurrentChange"
      :page-sizes="[10, 20, 30, 40]"
      layout="sizes, prev, pager, next"
      :total=page.recordCount>
    </el-pagination>
  </div>
</template>
<style>
  .time {
    font-size: 13px;
    color: #999;
  }

  .bottom {
    margin-top: 13px;
    line-height: 12px;
  }

  .button {
    padding: 0;
    float: right;
  }

  .image {
    width: 100%;
    display: block;
  }

  .clearfix:before,
  .clearfix:after {
    display: table;
    content: "";
  }

  .clearfix:after {
    clear: both
  }
</style>

<script>

  export default {
    name: 'Product',
    mounted() {
      this.load();
    },
    methods: {
      load() {
        var that = this;
        this.axios({
          method: 'get',
          url: 'http://localhost:5050/product/list',
          params: {
            kw: that.kw,
            pno: that.page.pno,
            pageSize: that.page.pageSize
          }
        })
          .then(function (response) {
            that.page.recordCount = response.data.recordCount;
            var newList = [];
            for (let i = 0; i < response.data.data.length; i++) {
              var product = response.data.data[i];
              product.pic = "http://localhost:5050/" + product.pic;
              newList.push(product);
            }
            that.productList = newList;
          })
          .catch(function (error) {
            console.log(error)
          });
      },
      handleCurrentChange(val) {
        this.page.pno = val;
        this.load();
      },
      handleSizeChange(val) {
        this.page.pageSize = val;
        this.load();
      },
      addCart(product) {
        var that = this;
        this.axios.post('http://localhost:5050/cart/add', {
          lid: product.lid,
          buyCount: 1
        })
          .then(function (response) {
            console.log("success")
            console.log(response)
          })
          .catch(function (error) {
            console.log(error)
          });
      }
    },
    data() {
      return {
        currentDate: new Date(),
        productList: [],
        kw: ' ',
        page: {
          "recordCount": 0,
          "pageSize": 10,
          "pno": 1,
        }
      };
    }
  };
</script>
