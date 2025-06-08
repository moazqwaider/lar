let but=document.querySelector('.bu');
let p=document.querySelector('.hh');
let span=p.querySelector('p');

let second=document.querySelector('.second');

let moi=setInterval(()=>{
  second.innerHTML=second.innerHTML -1;
  if(second.innerHTML==0){
    clearInterval(moi);
    but.classList.remove('bu');
  }
},1000)