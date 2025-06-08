let paer=document.getElementsByClassName('pa');
let imgs=document.getElementsByClassName('img');
let imgs2=document.getElementsByClassName('img2');
let dors=document.getElementsByClassName('dor');
let hr=document.getElementsByClassName('hr');
let map=document.getElementById('map');
let ims=document.querySelectorAll('.moa');
let span=document.querySelector(".up");
let inpu=document.querySelectorAll("input");
let bouts=document.getElementById('bout');
let chevron=document.getElementsByClassName('fa-chevron-down');
let imgss=document.querySelector(".img");
let are=document.getElementById('area');

are.onmouseover=function(){
  are.style.backgroundColor='blue';}
  are.onmouseout=function(){
    are.style.backgroundColor='white';}
  
inpu.forEach(mi=>{
 
  mi.onmouseover=function(){
    mi.style.backgroundColor='blue';}
    mi.onmouseout=function(){
      mi.style.backgroundColor='white';}
})




window.onscroll = function () {

 
  if (this.scrollY >= 1000) {
    span.classList.add("show");
  } else {
    span.classList.remove("show");
  }};

span.onclick = function () {
  window.scrollTo({
    top: 0,
    behavior: "smooth",
  });
};

 
   
    



bouts.onmouseover=function(){
    bouts.style.backgroundColor='white';
    bouts.style.color='black';

}
  
bouts.onmouseout=function(){
    bouts.style.backgroundColor='blue';
    bouts.style.color='white';
}

     
ims.forEach(imss=>{
  
  imss.onmouseout=function(){
    imss.style.height='100px';
    imss.style.width='250px';
  }
});
 
ims.forEach(imss=>{
  imss.onmouseover=function(){
    imss.style.height='130px';
    imss.style.width='280px';
  
  
  }
});
  for(let i=0;i<=imgs.length;i++){

  imgs[i].onclick=function(){
    paer[i].style.display='inline-block';
    dors[i].style.height='100%';
    hr[i].style.display='inline-block';
    imgs[i].style.display='none';
    imgs2[i].style.display='inline-block';
   

 
   
    
};
    imgs2[i].onclick=function(){
     paer[i].style.display='none';
     dors[i].style.height='100%';
     hr[i].style.display='none';
     imgs2[i].style.display='none';
    imgs[i].style.display='inline-block';
   
};

  

}
 


/********** */
/**
for(let i=0;i<=chevron.length;i++){

  chevron[i].onclick=function(){
    paer[i].style.display='block';
    dors[i].style.height='100%';
    hr[i].style.display='block';
    
    chevron[i].classList.toggle('active');

    actives[i].onclick=function(){
      paer[i].style.display='none';
      dors[i].style.height='100%';
 
    hr[i].style.display='none';
    chevron[i].classList.toggle('active');
   
    }
  }
} */
// for(let n=0;n<=8;n++){

//   ims[n].onmouseover=function(){
//       ims[n].style.height='130px';
//       ims[n].style.width='280px';
   
    
//   }

  
//   ims[n].onmouseout=function(){
//       ims[n].style.height='100px';
//       ims[n].style.width='250px';
   

//   }



// }


