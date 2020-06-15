<template>
  <div>
    <el-row>
      <el-col style="margin-bottom: 1rem">
        <el-button size="small" type="primary" icon="el-icon-shopping-cart-1" @click="showCart">购物车</el-button>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="6" v-for="(product) in productList" :key="product.lid" style="padding: .5rem">
        <el-card body-style="{ padding: '20px' }">
          <img :src=product.pic
               class="image">
          <div >
            <span style="font-size: .6rem">{{product.title}}</span>
            <div class="bottom clearfix">
              <div class="time" style="position: relative">
                <div style="text-align: left; font-size: .5rem">单价：￥ {{ product.price }}</div>
                <div style="text-align: left; font-size: .5rem">已出售： {{ product.sold_count }}</div>
                <el-button style="position: absolute; right: 0; top:5px" type="text" class="button" @click="addCart(product)">加入购物车</el-button>
              </div>
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
      :total=page.recordCount
    style="margin-top: .5rem">
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
                that.productList = newList;
                console.log(that.productLis);
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
