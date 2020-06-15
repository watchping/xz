<template>
  <div>
    <el-table
      ref="multipleTable"
      :data="tableData"
      @selection-change="handleSelectionChange">
      <el-table-column
        type="selection"
        width="55">
      </el-table-column>
      <el-table-column
        label="商品"
        width="400">
        <template slot-scope="scope">
          <el-row>
            <el-col :span="8">
              <el-image
                style="width: 100px; height: 100px"
                :src=scope.row.pic
                fit="fit"></el-image>
            </el-col>
            <el-col :span="16">
              <el-row>
                <el-col :span="24">
                  {{scope.row.title}}
                </el-col>
              </el-row>
              <el-row>
                <el-col :span="24">
                  {{scope.row.spec}}
                </el-col>
              </el-row>
            </el-col>
          </el-row>
        </template>
      </el-table-column>
      <el-table-column label="单价" width="180" prop="price"></el-table-column>
      <el-table-column label="数量" width="180" prop="count"></el-table-column>
      <el-table-column label="金额" width="180" prop="amount"></el-table-column>
      <el-table-column label="操作">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="danger"
            @click="handleDelete(scope.$index, scope.row)">删除
          </el-button>
        </template>
      </el-table-column>
    </el-table>
    <el-button type="warning"  icon="el-icon-delete" @click="clear" style="margin-top: 1rem; float: right">清空购物车</el-button>
  </div>
</template>
<script>
  export default {
    name: 'Cart',
    mounted() {
      this.load();
    },
    data() {
      return {
        tableData: [],
        multipleSelection: []
      }

    },
    methods: {
      load() {
        var that = this;
        this.axios({
          method: 'get',
          url: 'http://localhost:5050/cart/list',
        })
          .then(function (response) {
            if (response.status === 200) {
              if (response.data.code === 200) {
                var newList = [];
                for (var i = 0; i < response.data.data.length; i++) {
                  var item = response.data.data[i];
                  item.pic = "http://localhost:5050/" + item.pic;
                  item.amount = item.price * item.count;
                  newList.push(item);
                }
                that.tableData = newList;
              }
            }
          })
          .catch(function (error) {
            console.log(error);
          });
      },
      handleSelectionChange(val) {
        this.multipleSelection = val;
      },
      handleEdit(index, row) {
        console.log(index, row);
      },
      handleDelete(index, row) {
        var that = this;
        this.axios({
          method: 'get',
          url: 'http://localhost:5050/cart/delete',
          params: {
            iid: row.iid,
          }
        })
          .then(function (response) {
            if (response.status === 200) {
              if (response.data.code === 200) {
                that.load()
              }
            }
          })
          .catch(function (error) {
            console.log(error);
          });
      },
      clear() {
        var that = this;
        var ids = [];
        for (let i = 0; i < this.tableData.length; i++) {
          ids.push(this.tableData[i].iid);
        }
        this.axios({
          method: 'get',
          url: 'http://localhost:5050/cart/delete',
          params: {
            iid: ids.join(','),
          }
        })
          .then(function (response) {
            if (response.status === 200) {
              if (response.data.code === 200) {
                that.load()
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
