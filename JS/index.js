
/* menu bar toggle */
const menuIcon = document.querySelector('#menu')
const navigation = document.querySelector('.navigation')

menuIcon.onclick = () => {
  menuIcon.classList.toggle('fa-x');
  navigation.classList.toggle('active');
};

function changebg(){
  var navbar = document.querySelector('header');
  var scrollvalue = window.scrollY;
  var scrollup = document.querySelector('.scroll-up');
  /* remove nav.active onscroll */
  navigation.classList.remove('active');
  menuIcon.classList.add('fa-bars');
  
  if(scrollvalue > 50){
    scrollup.classList.add('active');
    menuIcon.style.color = "grey";
    
  }
  else{
    menuIcon.style.color = "lightgray";
    scrollup.classList.remove('active');
  }
  if(scrollvalue < 80){
    navbar.classList.remove('scrollbg');
  }
  else{
    navbar.classList.add('scrollbg');
    profile_links.classList.remove('active');
  }
}

// The nav link::before swap

const sections = document.querySelectorAll('section');
const navlinks = document.querySelectorAll('.navigation .link-portion a');

window.addEventListener('scroll', changebg);

window.onscroll = ()=>{
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
}; 

const profile = document.querySelector('#user-dropdown');
const profile_links = document.querySelector('.profile-links');

profile.onclick = () => {
  profile_links.classList.toggle('active');
};
 
// Background image swapping iteration

const bg_slider = document.querySelector('.bg_img_slider');
var img_index = 0;
let transform;;
setInterval(()=>{

  transform = img_index * (100/-3)
  bg_slider.style.transform = `translate(${transform}%)`;
  img_index = (img_index == 2)?0:++img_index; 
}, 10000);