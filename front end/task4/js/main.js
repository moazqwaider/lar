let but=document.querySelector('.add');
let files = document.querySelector('.file');
let img = document.querySelector('.img');
let inp1=document.getElementById('input1')
let inp2=document.getElementById('input2')
let inp3=document.getElementById('input3')
let inp4=document.getElementById('input4')
let inp5=document.getElementById('input5')
let inp6=document.getElementById('input6')
let bode = document.querySelector('.bod');

let container = document.querySelector('.imags');


load();



function load(){
    
    files.addEventListener('change', function() {
        let fileList = files.files;
        
        for (let i = 0; i < fileList.length; i++) {
          let reader = new FileReader();
          let img = document.createElement('img'); 
          reader.readAsDataURL(fileList[i]);
          reader.addEventListener('load', () => {
            img.src = reader.result;
            img.style.width = `${inp1.value}px`;
            img.style.height = `${inp2.value}px`;
            img.style.top = `${inp3.value}px`;
            img.style.bottom = `${inp4.value}px`;
            img.style.right = `${inp5.value}px`;
            img.style.left = `${inp6.value}px`;
          });
         
      

      
          container.appendChild(img);
          document.container.appendChild(container);
        }
        
       
      });
          inp1.value = ""; 
          inp2.value = ""; 
          inp3.value = ""; 
          inp4.value = ""; 
          inp5.value = ""; 
          inp6.value = ""; 
   
  }
 