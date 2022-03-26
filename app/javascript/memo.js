document.addEventListener('DOMContentLoaded', function() {
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
    //スクロールしてトップ
    topBtn.click(function () {
        $('body,html').animate({
            //scrollTop: 0 クリックしたら戻る
        }, 500);
    });
  });
});