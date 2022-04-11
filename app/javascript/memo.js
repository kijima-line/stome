'use strict'
window.addEventListener('turbolinks:load', function() {
  $(function() {
    var topBtn = $('#side-a'); 
    topBtn.hide().fadeIn("");
    //スクロールが100に達したら表示

    $(window).on('scroll', function () {
        if ($(this).scrollTop() > 200) {
            topBtn.fadeIn();
        } else {
            topBtn.fadeOut();
        }
    });
  });
});
 
var xhr = new XMLHttpRequest();
xhr.open("GET", "likes/like");
xhr.onreadystatechange  = function (e) {
  if (xhr.readyState === 4) {
    if (xhr.status === 200) {
      // 処理
    } else {
      //
    }
  }
};
