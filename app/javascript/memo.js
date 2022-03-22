window.onload = function () {
  document.querySelector("#side-a").addEventListener("mousedown", function (event) {
    this.style.backgroundColor = "pink"
  }, false);
  document.querySelector("#side-a").addEventListener("click", function (event) {
    this.style.backgroundColor = "blue"
  }, false);

};

$(document).ready(function() {
  $(".edit").click(function(){
     $("#text").removeAttr('style');
     $(this).hide();
     $("#regist").removeAttr('style');
  });

  $(".add_btn").click(function(){
     $('#food_form').submit();
  });
});