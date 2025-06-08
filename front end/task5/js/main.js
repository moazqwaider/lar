
let select = document.querySelector('select');
let inp = document.querySelector('.inp');
let text = document.querySelector('.textarea');
let email = document.querySelector('.email');
email.addEventListener('change', function() {
    let email=this.value;
    var Pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    var ValidEmail = Pattern.test(email);
    if(ValidEmail){
        alert(' البريد الالكتروني صح');
    }else
    alert ('البريد  الالكتروني غير صحيح')
  
});
let word=30;
let count=0;
text.addEventListener('input', function() {
 let words = this.value.trim().split(/\s+/);
 count = words.length;

 if(count>word){
    this.disabled=true;
    alert('لقد تجاوزت عددالكلمات المطلوب')
 }
    
});

select.onchange = () => {
    if(select.value=='Otherwise')
    inp.style.display='block';
    else{
        inp.style.display='none';

    }
    };

