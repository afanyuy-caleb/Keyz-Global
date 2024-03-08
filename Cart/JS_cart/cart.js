export let cart = (localStorage.cart)? JSON.parse(localStorage.cart): [];

let cart_qty_id;

export function setCart(cart_id){
  cart_qty_id = cart_id;
  cart_qty_id.innerText = cart.length;
}

function UpdateStorage(){
  localStorage.cart = JSON.stringify(cart);
  
}

export function AddToCart(id, item_qty){

 var exists = false;
 for(let i=0; i<cart.length; i++){
  if(cart[i].id === id){
    exists = true;
    break;
  }
 }
 if(!exists){

  cart.push({
    id,
    item_qty,
  });
  cart_qty_id.innerText = cart.length;
  UpdateStorage();
  
  
 }else 
    return true;

}

export function rmFromCart(id){
  console.log(cart);
  cart.forEach((item, index)=>{
    if(item.id === id){
      console.log(item)
      cart.splice(index, 1);

      cart_qty_id.innerText = cart.length;
      UpdateStorage();
    }
  })
  
}

export function delFromCart(id){

  cart.forEach((item, index)=>{
    if(item.id === id){
      cart.splice(index, 1);
      UpdateStorage();
    }
  })
}

export function updateItem(id, value){

  cart.forEach((item, index) =>{
   
    if(item.id === id){
      if(value){
        item.item_qty++;
      
      }else{
       item.item_qty--;
       if(item.item_qty <= 0){
        cart.splice(index, 1);
       } 
      }
    }
  })
  
  UpdateStorage();
}