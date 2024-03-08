// settings for hovering over the sidepane and eliminating the active class

const sidepane = document.querySelector('.sidepane-links-section');
const sidepane_link = document.querySelectorAll('.sidepane-links.indent');
const focus = document.getElementById("dash");

// horizontal bar for scroll
const vertical = document.getElementById('vertical')

focus.classList.add('active');
sidepane.onmouseover = () =>{
  focus.classList.remove('active');
}

sidepane.onmouseout = () =>{
  focus.classList.add('active');
}

function scrollEffect(){
  var scrollvalue = window.scrollY;
  let pos = document.documentElement.scrollHeight;
  let client = document.documentElement.clientHeight;

  let remHeight = pos - client;

  let value = Math.round((scrollvalue * 100) / remHeight);

  if(scrollvalue > 100){
    vertical.style.display = "grid"
  }
  else{
    vertical.style.display = "none"; 
  }

  vertical.style.background = `linear-gradient(rgba(138, 24, 167, 0.5) ${value}%, transparent ${value}%)`
}

window.addEventListener("scroll", scrollEffect)
