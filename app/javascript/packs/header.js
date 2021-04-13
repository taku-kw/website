import Vue from 'vue'

new Vue ({
  el: '.header',
  data: {
    navTop: 0,
    loginFlag: false
  },
  mounted: function() {
    let elem = document.getElementById('nav')
    let cssStyleDecoration = getComputedStyle(elem, null)
    this.navTop = parseInt(cssStyleDecoration.getPropertyValue('top'))
    window.addEventListener('scroll', this.scrollCtrl)
    this.scrollCtrl()
  },
  methods: {
    scrollCtrl() {
      if(this.navTop <= window.scrollY) {
        document.getElementById('nav').classList.add('nav-fixed')
        document.getElementById('title').classList.add('title-fixed')
        document.getElementById('top-bar').classList.add('top-bar-fixed')
      }
      else
      {
        document.getElementById('nav').classList.remove('nav-fixed')
        document.getElementById('title').classList.remove('title-fixed')
        document.getElementById('top-bar').classList.remove('top-bar-fixed')
      }
    },
    log_in() {
      this.loginFlag = true;
    },
    log_out() {
      this.loginFlag = false;
    }
  }
});
