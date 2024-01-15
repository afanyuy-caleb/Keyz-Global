import {AddToCart, setCart, rmFromCart} from "../../../Cart/JS_cart/cart.js";

const profile = document.querySelector('.prof-image');
const profile_links = document.querySelector('.profile-links');

profile.onclick = () => {
  profile_links.classList.toggle('active');
}

window.addEventListener('scroll', () =>{
  if(window.scrollY > 50){
    profile_links.classList.remove('active');
  }
})

// dealing with the page swapping spans
const page_swapper = document.querySelector(".page_swapper");

if(test){
  page_swapper.style.display = "none"
}

// The cart quantity identifier
const Add_btn = document.querySelectorAll('.add_btn');
var quantity = document.querySelector('#pd_qnty_num')

setCart(quantity);

Add_btn.forEach((button, index) =>{
  button.addEventListener('click', ()=>{
    var id = button.dataset.productid;
    const item_qty = document.querySelector(`.item_${id}`).value;
    Product_update(button, id, item_qty);

  })
})

function Product_update(button, id, item_qty){  
  if(button.textContent == "Add to Cart"){
    button.textContent = "Remove from cart"; 
    button.style.background = 'rgb(225, 66, 228)';
    let exists = AddToCart(id, item_qty);

    if(exists){
      const exist_div = document.querySelector(`.exists-alert-${id}`)
      exist_div.innerHTML = '<i class="fas fa-check"></i> Item already exists';

      setTimeout(()=>{
        exist_div.innerText = '';
      }, 3000)

    }
    
  }
  else{
    button.textContent = "Add to Cart";
    button.style.background = 'rgb(62, 62, 230)';
    rmFromCart(id);
    
  }
}

// Trying to change the style of the span as each of them is being clicked

const image_section = document.querySelectorAll('.image_sections');
const page_link = document.querySelectorAll('.page_swapper a');

page_link.forEach((link, index) =>{

  link.addEventListener('click', ()=>{
    
    page_link.forEach(link =>{
      link.classList.remove('active');
    })

    link.classList.add('active');
  });

})

try{
  var pd_table = [];
  let isExist = false;
  if(localStorage.tableName){
    pd_table = JSON.parse(localStorage.tableName);
    for(let i = 0; i < pd_table.length; i++){
      if(pd_table[i] === table_name){
        isExist = true;
        break;
      }    
    }
  }

  if(!isExist){
    pd_table.push(table_name)
  }

  var savedData = [];
  localStorage.tableName = JSON.stringify(pd_table);

  if(localStorage.products){
    savedData = JSON.parse(localStorage.products);
    if(!isExist){
      savedData.push(table_name)
      arrayProducts.forEach(item =>{
        savedData.push(item);
      })
    }
  }else{
    savedData = arrayProducts;
  }

  localStorage.products = JSON.stringify(savedData);
}
catch(error){
  console.log(error);
}

