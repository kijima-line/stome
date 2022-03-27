window.onload = function () {

  $(function() {
    var topBtn = $('#side-a');    
    topBtn.hide();
    //スクロールが100に達したら表示
    $(window).scroll(function () {
        if ($(this).scrollTop() > 200) {
            topBtn.fadeIn();
        } else {
            topBtn.fadeOut();
        }
    });
  });
};
