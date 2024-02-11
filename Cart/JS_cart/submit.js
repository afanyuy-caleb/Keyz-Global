import {cart} from './cart.js';
import dayjs from 'https://unpkg.com/dayjs@1.11.10/esm/index.js';

var localData = JSON.parse(localStorage.products)
var amount = Number(JSON.parse(sessionStorage.total_amt))

var today = dayjs().format('YYYY-MM-D H:m:s');

console.log(today);
cart.forEach((element, index) => {
  localData.forEach(pd =>{
    if(element.id === pd.id){
      cart[index].table_name = pd.table_name;
    }
  })
});

$(document).ready(function(){

  $.get('dataSubmit.php', {
    cart,
    date: today,
    amt: amount,
    cartString: JSON.stringify(cart)
  }, 
  function(resp){
    if(!resp){
      $('.server').html('Data submission failed')
    }
    else{
      sessionStorage.removeItem('total_amt')
      localStorage.removeItem('cart')
    }
  } );

})



