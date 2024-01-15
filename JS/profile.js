/* The loading portion */
const camera = document.getElementById('camera');
const shadow = document.querySelector('.shadow');
const closeButton = document.getElementById('close-button');
const product_menu = document.querySelector('.all-products');
const products = document.querySelector('.products'); 

camera.onclick = () => {
  shadow.classList.add('active');
};
closeButton.onclick = () =>{
  shadow.classList.remove('active');
};
 
 