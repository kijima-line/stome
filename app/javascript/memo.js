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
 