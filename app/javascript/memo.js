window.onload = function () {
  document.querySelector("#side-a").addEventListener("mousedown", function (event) {
    this.style.backgroundColor = "pink"
  }, false);
  document.querySelector("#side-a").addEventListener("click", function (event) {
    this.style.backgroundColor = "blue"
  }, false);


$(function() {
  var topBtn = $('#side-a');    
  topBtn.hide();
  //スクロールが100に達したらボタン表示
  $(window).scroll(function () {
      if ($(this).scrollTop() > 150) {
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
};