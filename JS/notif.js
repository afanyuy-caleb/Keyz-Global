
const log_notif = document.querySelector('.notification');
const notif_cls = document.querySelector('#notif_cls_btn');

notif_cls.addEventListener('click', ()=>{
  log_notif.classList.remove('active');
})

function Page_redirect_notification(page_index, destination_name){

  let url_link = "http://localhost/official/Keyz-Global/Products/"+destination_name;
  
  if(page_index == 0)
    log_notif.classList.add('active')  
  
  else 
    window.open(url_link, '_self')
   
 }