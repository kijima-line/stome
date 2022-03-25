function stock (){
  const yatte = document.getElementById("yatte");
 yatte.addEventListener("click", (e) => {
 const stock = document.getElementById("stock")
 XHR.open("POST", "/stock", true);
 XHR.responseType = "json";
 }); 
};

window.addEventListener('load', stock);