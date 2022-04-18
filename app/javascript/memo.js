
window.addEventListener('turbolinks:load', function() {
  $(function() {
    let topBtn = $('#side-a'); 
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

window.onscroll = function () {
  let headerH = document.getElementsByClassName('header')[0].clientHeight; // headerの高さを取得
  let side_authorH = document.getElementsByClassName('side')[0].clientHeight; // 一つ目サイドバーの高さを取得
  let side_searchH = document.getElementsByClassName('main')[0].clientHeight; // 二つ目のサイドバーの高さを取得
  let side_categoryH = document.getElementsByClassName('list')[0].clientHeight; // 三つ目のサイドバーの高さを取得
　// 上で取得した高さを合計する
  let totalH = headerH + side_authorH + side_searchH + side_categoryH;
  // 追従させたい要素のクラス名を取得する
  let side_adv = document.getElementsByClassName('list')[0];

  // 画面に追従するサイドバーの実装
  // 画面の幅が991px以下の場合は実行されないようにする
  if (window.innerWidth >= 8){
    // 追従したいサイドバーのところまできたら追従する
    if (window.pageYOffset >= totalH) {
      // 追従機能に使用するCSSを設定
      side_adv.classList.add('fixed'); 
    } else {
      // 追従が必要無い箇所では追従CSSをはずず
      side_adv.classList.remove('fixed');
    }
  }
}