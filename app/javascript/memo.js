window.onload = function () {
  document.querySelector("#side-a").addEventListener("mousedown", function (event) {
    this.style.backgroundColor = "pink"
  }, false);
  document.querySelector("#side-a").addEventListener("click", function (event) {
    this.style.backgroundColor = "blue"
  }, false);

};