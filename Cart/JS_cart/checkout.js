import {cart, delFromCart, rmFromCart, updateItem} from './cart.js';
import {shipping} from './shipping.js';
import {formatCurrency} from './utils/money.js';
import dayjs from 'https://unpkg.com/dayjs@1.11.10/esm/index.js';

var localData = JSON.parse(localStorage.products)

function shippingOptions(shipping_id){
  let html = '';
  var price;
  let today = dayjs();
  let deliveryDate;

  shipping.forEach((option) =>{    
    var ischecked = '';
    if(shipping_id === option.id){
      ischecked = 'checked';
    }

    deliveryDate = today.add(option.days, 'days').format('dddd, MMMM D,  YYYY');

    price = (option.priceCents > 0)? `$${formatCurrency(option.priceCents)}` : 'FREE'
    html += `
      <div class="ship-values" data-shipping="${option.id}">
            
        <input type="radio" class="choice-input" name="ship-opt" id="free" ${ischecked}>
        <div class="choice">
          <label for="free"> 
          <span class="del-date">${deliveryDate} </span> <br>
          <span class="ship-option"> ${price} - Shipping </span>
          <label>
        </div>

      </div>
    `
  })

  return html;
}

var shippingPrice;

function renderPage(received_id){

  let Nb = (cart.length == 1)? cart.length + ' Item': cart.length + ' Items';

  document.querySelector('.title').innerHTML = `Shopping Cart <span class="item_nb"> ${Nb} </span>`;

  var itemContainer = '';
  
  let delivDate;
  let subTotal;
  let amount = 0;

  cart.forEach(element => {
    let matchPd;
    localData.forEach((pd, index)=>{
    
      if(pd.id == element.id){  
        matchPd = pd;
        matchPd.quantity = element.item_qty;
        matchPd.delOptionId = element.delOptionId;
      }
    })
   
    if(matchPd){

      subTotal = formatCurrency(matchPd.price * Number(matchPd.quantity));
      amount += Number(subTotal);
      
      shipping.forEach(element => {
        if(matchPd.delOptionId === element.id){
          delivDate = dayjs().add(element.days, 'days').format('dddd, MMMM D, YYYY');
        }
         
      });
      
      itemContainer += `
      <div class="cart-item-cont" data-itemDetails="${matchPd.id}">
        <div class="pd_properties item-display">
          <img src="../images/${matchPd.img_folder}/${matchPd.image}" />
          <p class="product-name">
            ${matchPd.name}
          </p>
        </div>
        <div class="pd_properties pd-price">
          $${formatCurrency(matchPd.price)}
        </div>
        <div class="pd_properties update-div">
          <div>
            <span class="reduceQty" title="reduce" data-pd-update="${matchPd.id}"> <i class="fas fa-minus"></i> </span>
            <hr>
            <span class="qty-label"> ${matchPd.quantity} </span>
            <hr>
            <span class="addQty" title="add" data-pd-update="${matchPd.id}"> <i class="fas fa-plus"></i> </span>
          </div>
        </div>
        <div class="pd_properties subTotal">
          $${subTotal}
        </div>
        <span data-del-pd="${matchPd.id}" class="del-link" title="remove Item">
          <i class="fas fa-x"></i> 
        </span>        

      </div>
    ` 
    }

  });

  let amt = formatCurrency(amount * 100);
  
  let ship_amt = shippingPrice ? '$'+formatCurrency(shippingPrice) : shippingPrice == 0 ? 'FREE' : 'Not set';

  let sub_total = shippingPrice ? formatCurrency(shippingPrice) + amt : amt;
  let tax_amt = formatCurrency(amount * 10);
  let totalAmt = (Number(tax_amt) + sub_total).toFixed(2);
  sessionStorage.total_amt = JSON.stringify(totalAmt);

  var summaryHtml =  `
    <div class="ship-options-section" title="Ship Options">
      <div class="option-link">
        <p>Shipping Options : </p>
        <i class="fas fa-chevron-down"></i>
      </div>
      <div class="shipping-options">
        ${received_id ? shippingOptions(received_id): shippingOptions()}
      </div>
    </div>
    <hr>
    <div class="price-summary">
      <div> 
        <span class="items">
          Items(${cart.length}):
        </span>
        <span class="amt">
          $${amt}
        </span>
      </div>
      <div> 
        <span class="shipping">
          Shipping and handling:
        </span>
        <span class="ship-amt">
          ${ship_amt}
        </span>
      </div>
      <div> 
        <span class="Tot-b4-tax">
          Total before tax:
        </span>
        <span class="tot-amt">
          $${sub_total}
        </span>
      </div>
      <div> 
        <span class="tax">
          Estimated tax(10%):
        </span>
        <span class="tax-amt">
          $${tax_amt}
        </span>
      </div>
      <hr>
      <div class="Order-total">
        <span> 
          Order Total
        </span>
        <span>
          $${totalAmt}
        </span>
      </div>
      
    </div>
    <hr>
    <div class="payment-link">
      <p>Payment Options : </p>
      <i class="fas fa-chevron-down"></i>
    </div>
    <div class="payment-options">
      <div class="payOption">
        <input type="radio" name="pay">
        <img src="../images/payment-logos/1.png" id="paypal">
      </div>
      <div class="payOption">
        <input type="radio" name="pay">
        <img src="../images/payment-logos/2.png" id="visa">
      </div>
      <div class="payOption">
        <input type="radio" name="pay">
        <img src="../images/payment-logos/3.png" id="master">
      </div>
      <div class="cam-options">
        <div class="payOption">
          <input type="radio" name="pay">
          <img src="../images/payment-logos/4.png" id="orange">
        </div>
        <div class="payOption">
          <input type="radio" name="pay" checked>
          <img src="../images/payment-logos/5.png" id="mtn">
        </div>
      </div>
      
    </div>

    <hr>
    <div class="Pay-btn">
      <div id="pay-msg">

      </div>
      <button type="submit" class="submit-payment">Confirm & Pay
      </button>

    </div>
  `
  document.querySelector('.orderedItems').innerHTML = itemContainer;
  document.querySelector('.js-summary').innerHTML = summaryHtml;

  const delBtn = document.querySelectorAll('.del-link');
  const addQty = document.querySelectorAll('.addQty')
  const reduceQty = document.querySelectorAll('.reduceQty')
  const shipBtn = document.querySelector('.option-link');
  const shipIcon  = document.querySelector('.option-link i')
  const paymentLinks = document.querySelector('.payment-link')
  const payIcon = document.querySelector('.payment-link i')
  const subPaymentMsg = document.getElementById('pay-msg')
  const subPaymentBtn = document.querySelector('.submit-payment')

  
  const check = document.querySelectorAll('.ship-values')

  if(shippingPrice || shippingPrice == 0){
    document.querySelector('.shipping-options').classList.add('active');
    shipIcon.classList = 'fas fa-chevron-up'
  }

  // Choosing the shipping options
  check.forEach((checkrad, index)=>{
    checkrad.addEventListener('click', ()=>{
      let ship_string = document.querySelectorAll('.ship-values')[index].dataset.shipping;

      shipping.forEach(option=>{
        if(option.id === ship_string){
          shippingPrice = option.priceCents
          renderPage(option.id);
        }
      })

    })
  })


// Verify whether or not the cart is empty before the submitting the payment
  subPaymentBtn.addEventListener('click', ()=>{
    if(cart.length != 0){
      let url = document.URL.substring(0, document.URL.lastIndexOf('/')) + "/Checkout.php";
      window.open(url);
      console.log(cart);
    }
    else{
      subPaymentMsg.innerText = "There is nothing to pay for!!"
      setTimeout(() =>{
        subPaymentMsg.innerText = '';
        
      }, 3000)
    }
    
  })

  // Shipping options
  shipBtn.addEventListener('click', ()=>{
    document.querySelector('.payment-options').classList.remove('active')
    payIcon.classList = 'fas fa-chevron-down';
    document.querySelector('.shipping-options').classList.toggle('active')
    let icon = shipIcon.getAttribute('class');
    if (icon === 'fas fa-chevron-down'){
      shipIcon.classList = 'fas fa-chevron-up';
    }
    else{
      shipIcon.classList = 'fas fa-chevron-down';
    }
  })

  // Payment options
  paymentLinks.addEventListener('click', ()=>{
    document.querySelector('.shipping-options').classList.remove('active');
    shipIcon.classList = 'fas fa-chevron-down'
    document.querySelector('.payment-options').classList.toggle('active')
    let icon = payIcon.getAttribute('class');
    if (icon === 'fas fa-chevron-down'){
      payIcon.classList = 'fas fa-chevron-up';
    }
    else{
      payIcon.classList = 'fas fa-chevron-down';
    }
  })
  
  // Delete a product from the cart
  delBtn.forEach((del, index)=>{
    del.addEventListener('click', ()=>{
      
      delFromCart(del.dataset.delPd);
      renderPage();
    })
  })

  // Add product quantity in the cart
  addQty.forEach(btn =>{
    btn.addEventListener('click', ()=>{
      let update_id = btn.dataset.pdUpdate;

      updateItem(update_id, 1);
      renderPage()
      
    })
  })

  // Reduce product quantity
  reduceQty.forEach(btn =>{
    btn.addEventListener('click', ()=>{
      let update_id = btn.dataset.pdUpdate;

      updateItem(update_id, 0);
      renderPage();
    })
  })
}

renderPage()