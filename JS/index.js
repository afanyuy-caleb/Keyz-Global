
/* menu bar toggle */
const menuIcon = document.querySelector('#menu')
const navigation = document.querySelector('.navigation')

// The scroll back to top button
const scrollup = document.querySelector('.scroll-up');
const progressValue = document.getElementById('scroll-up-value')


// The nav links and the sections
const sections = document.querySelectorAll('section');
const navlinks = document.querySelectorAll('.navigation .link-portion a');

menuIcon.onclick = () => {
  menuIcon.classList.toggle('fa-x');
  navigation.classList.toggle('active');
};

function changebg(){

  var navbar = document.querySelector('header');
  var scrollvalue = window.scrollY;
  let pos = document.documentElement.scrollHeight;
  let client = document.documentElement.clientHeight;

  let remHeight = pos - client;

  let value = Math.round((scrollvalue * 100) / remHeight);

  /* remove nav.active onscroll */
  navigation.classList.remove('active');
  menuIcon.classList.add('fa-bars');
  
  if(scrollvalue > 50){
    menuIcon.style.color = "grey";
    
  }
  else{
    menuIcon.style.color = "lightgray";
  }

  if(scrollvalue < 80){
    navbar.classList.remove('scrollbg');
  }
  else{
    navbar.classList.add('scrollbg');
    profile_links.classList.remove('active');
  }

  if(scrollvalue > 100){
    scrollup.style.display = "grid";
    
  }
  else{
    scrollup.style.display = "none";
  }

  // Back to top eventListener

  scrollup.addEventListener("click", ()=>{
    document.documentElement.scrollTop = 0;
  })

  scrollup.style.background = `conic-gradient(rgb(66, 66, 214) ${value}%, white ${value}%)`

  // Adding/removing the active for the nav links
  sections.forEach(section =>{
    
    let top = window.scrollY;
    let offset = section.offsetTop - 150;
    let height = section.offsetHeight;
    let id = section.getAttribute('id');

    if(top >= offset && top < offset + height){

      navlinks.forEach(link =>{       
        link.classList.remove('active');
        document.querySelector('.navigation .link-portion a[href*='+ id +']').classList.add('active');
      })
    }
  })

}

window.addEventListener('scroll', changebg);



const profile = document.querySelector('#user-dropdown');
const profile_links = document.querySelector('.profile-links');

profile.onclick = () => {
  profile_links.classList.toggle('active');
};
 
// Background image swapping iteration

const bg_slider = document.querySelector('.bg_img_slider');
var img_index = 0;
let transform;
setInterval(()=>{

  transform = img_index * (100/-3)
  bg_slider.style.transform = `translate(${transform}%)`;
  img_index = (img_index == 2)?0:++img_index; 
  
}, 10000);