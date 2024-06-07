
import {formatCurrency} from '../Cart/JS_cart/utils/money.js'

$(document).ready(function(){

    const products = JSON.parse(localStorage.products);
    const contents = []; // Define contents variable here

    async function transDetails(id){
        var transString = null;
        let bool = false;

        // The ajax call shouldn't be done everytime the button is clicked. It should be done just once and the resulting transaction string stored in an array, contents[].

        if(contents.length > 0){
            contents.forEach(item =>{
                if(item.id === id){

                    bool = true;
                    transString = item.transString;
                }
            })
        }

        // if the item's id doesn't exist in the array, we now add it to it
        async function fetchData(id) {
            if (!bool) {
                try {
                    const resp = await $.get("transString.php", { id });
                    if (resp) {
                        transString = JSON.parse(resp);
                        contents.push({
                            id,
                            transString
                        });
                    } else {
                        let reply = prompt("What is really going on?");
                        console.log(reply);
                    }
                } catch (error) {
                    console.error("Error fetching data: ", error);
                }
            }
        }
        
        // Call the fetchData function
        await fetchData(id);
        
        $(".details").css("display", "block")

        if(transString){
            var count = 0;

            let html =
            `
                <div class="contentHeader">
                    <div>
                        <h5>
                            Image
                        </h5>
                    </div>
                    <div>
                        <h5>
                            Unit Price
                        </h5>
                    </div>
                    <div>
                        <h5>
                            Item Quantity
                        </h5>
                    </div>
                    <div>
                        <h5>
                            Total Price
                        </h5>
                    </div>

                </div>

            `;
            transString.forEach(trans => {

                products.forEach(product =>{

                    if(trans.id === product.id){

                        count++;
                        let unitPrice = product.price;
                        let qty = trans.item_qty;
                        let totPrice = qty*unitPrice;
                        html +=
                        `
                            <div class="detailContents">

                                <div class="img-section">
                                    <img src="images/${product.img_folder}/${product.image}" />
                                </div>
                                <div class="unitPrice-section">
                                    <span class="unitPrice">
                                        $${formatCurrency(unitPrice*100)}
                                    </span>
                                </div>
                                <div class="qty-section">
                                    <span class="qty">
                                        ${qty}
                                    </span>
                                </div>
                                <div class="totPrice-section">
                                    <span class="totPrice">
                                        $${formatCurrency(totPrice*100)}
                                    </span>
                                </div>

                            </div>
                        `
                    }
                })
                
            });

            $("#item-nb").text(`(${count})`);

            $(".contents").html(html);
        }
    }

    $(".det").click(async function(event) {

        let elem = event.target;    
        $(".det").removeAttr('id');
        $(elem).attr("id", "clicked");
        var id = elem.dataset.identifier;
        await transDetails(id);
    });
})



