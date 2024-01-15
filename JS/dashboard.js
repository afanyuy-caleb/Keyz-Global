// settings for hovering over the sidepane and eliminating the active class

const sidepane = document.querySelector('.sidepane-links-section');
const sidepane_link = document.querySelectorAll('.sidepane-links.indent');
const focus = document.getElementById("dash");

focus.classList.add('active');
sidepane.onmouseover = () =>{
  focus.classList.remove('active');
}

sidepane.onmouseout = () =>{
  focus.classList.add('active');
}
