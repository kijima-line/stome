

function stock (){
  submit.addEventListener("click", () => {
    console.log("イベント発火");
  });
};
window.addEventListener('load', stock);