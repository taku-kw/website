import Vue from 'vue'

new Vue ({
  el: '.header',
  data: {
    navTop: 0,
    loginFlag: false,
    modalFlag: false,
    modalScrollY: 0
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
      this.modalScrollY = window.scrollY;
      document.getElementById('modal-area').style.top = (this.modalScrollY + 'px');
      this.modalFlag = true;
      document.getElementsByTagName('html')[0].style.position = 'fixed';
      document.getElementsByTagName('html')[0].style.top = ((-this.modalScrollY) + 'px');
      document.getElementsByTagName('body')[0].style.position = 'fixed';
      document.getElementsByTagName('body')[0].style.top = ((-this.modalScrollY) + 'px');
    },
    log_in_ok() {
      this.modalFlag = false;
      this.loginFlag = true;
      document.getElementsByTagName('html')[0].style.position = '';
      document.getElementsByTagName('html')[0].style.top = '';
      document.getElementsByTagName('body')[0].style.position = '';
      document.getElementsByTagName('body')[0].style.top = '';
      window.scrollTo(0, this.modalScrollY);
    },
    log_in_cancel() {
      this.modalFlag = false;
      document.getElementsByTagName('html')[0].style.position = '';
      document.getElementsByTagName('html')[0].style.top = '';
      document.getElementsByTagName('body')[0].style.position = '';
      document.getElementsByTagName('body')[0].style.top = '';
      window.scrollTo(0, this.modalScrollY);
    },
    log_out() {
      this.loginFlag = false;
    }
  }
});
