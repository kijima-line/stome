window.onload = function () {
  document.querySelector("#side-a").addEventListener("mouseover", function (event) {
    this.style.backgroundColor = "pink"
  }, false);
  document.querySelector("#side-a").addEventListener("mouseout", function (event) {
    this.style.backgroundColor = "blue"
  }, false);

};