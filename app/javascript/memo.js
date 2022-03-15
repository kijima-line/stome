

function stock (){
  const submit = document.getElementById("a");
  submit.addEventListener("click", () => {
    console.log("イベント発火");
  });
};
window.addEventListener('load', stock);