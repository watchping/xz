<template>
  <div>
    <el-row>
      <el-col>
        <el-button type="primary" icon="el-icon-shopping-cart-1" @click="showCart">购物车</el-button>
      </el-col>
    </el-row>
    <el-row v-for="(colList, index) in productList" :key="index">
      <el-col :span="6" v-for="(colItem) in colList" :key="colItem.lid">
        <el-card body-style="{ padding: '20px' }">
          <img :src=colItem.pic
               class="image">
          <div style="padding: 14px;">
            <span>{{colItem.title}}</span>
            <div class="bottom clearfix">
              <el-button type="text" class="button" @click="addCart(colItem)">加入购物车</el-button>
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
      showCart() {
        this.$router.push({path: 'cart'});
      },
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
            if (response.status === 200) {
              if (response.data.code === 200) {
                that.page.recordCount = response.data.recordCount;
                var newList = [];
                for (let i = 0; i < response.data.data.length; i++) {
                  var product = response.data.data[i];
                  product.pic = "http://localhost:5050/" + product.pic;
                  newList.push(product);
                }

                var length = newList.length;
                that.productList = newList;
              }
            }
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
            if (response.status === 200) {
              if (response.data.code === 200) {
                that.$message({
                  message: '添加购物车成功！',
                  type: 'success'
                });
              }
            }
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
