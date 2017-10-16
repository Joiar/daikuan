// pages/home/home.js
var app = getApp()
Page({
  data:{
    scrollTop: {
      scroll_top: 0,
      goTop_show: false
    }  
  },
  isDefault: false,
  // 返回顶部
  scrollTopFun: function (e) {
    if (e.detail.scrollTop > 50) {//触发gotop的显示条件  
      this.setData({
        'scrollTop.goTop_show': true
      });
    } else {
      this.setData({
        'scrollTop.goTop_show': false
      });
    }
  },
  goTopFun: function (e) {
    var _top = this.data.scrollTop.scroll_top;//发现设置scroll-top值不能和上一次的值一样，否则无效，所以这里加了个判断  
    if (_top == 1) {
      _top = 0;
    } else {
      _top = 1;
    }
    this.setData({
      'scrollTop.scroll_top': _top
    });
  },  
  formSubmit: function (e) {
    // console.log('form发生了submit事件，携带数据为：', e.detail.value)
    var username = e.detail.value.username;
    var mobile = e.detail.value.mobile;
    var mythis = this;

    if (username == '') {
      wx.showToast({
        title: '请填写姓名',
      });
      return;
    }
    if (mobile == '') {
      wx.showToast({
        title: '请填写手机号码',
      });
      return;
    }
    
    
    if (!(/^1(3|4|5|7|8)\d{9}$/.test(mobile))) {
        
      wx.showToast({
        title: '请填写正确手机号码',
      });
      return;
    }

    // 提交留言数据

    wx.request({
        url: app.globalData.dataurl + '/index.php/Home/Wechatmini/getMessage',
        method: 'post',
        data: {
            "username":username,
            "mobile":mobile
        },
        header: {
            // 'Content-Type': 'application/json'
            "Content-Type": "application/x-www-form-urlencoded"
        },
        success: function (res) {
            if (res.data.status == 0) {
                console.log(res);
                return false;
            wx.showToast({
                title: res.data.data.info,
                icon: 'loading',
                duration: 1500
            })
            } else {
                wx.showToast({
                    title: res.data.data.info,
                    icon: 'success',
                    duration: 1000
                })

                setTimeout(function () {
                  wx.redirectTo({
                    url: '/pages/home/home'
                  });
                }, 2000)
               

                
            }
        }
    })

  },
  reload:function(e)
  {
    this.setData({
      scrollTop: 0
    })
  },
 

})

