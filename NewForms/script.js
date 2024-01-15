  /* menu bar toggle
    const menuIcon = document.querySelector('#menu');
    const navigation = document.querySelector('.navigation');

    menuIcon.onclick = () => {
      menuIcon.classList.toggle('fa-x');
      navigation.classList.add('active');
    };
    */

    // The function for the view password button
    
    const pswrField = document.querySelector("input[type='password']");
    const pass_icon = document.querySelector('.pass-icon');

    pass_icon.addEventListener('click', function() {
    if(pswrField.type == "password"){
      pswrField.type = "text";
      pass_icon.className = " fas fa-eye-slash ";
    }
    else{
      pswrField.type = "password";
      pass_icon.className = ('fas fa-eye pass-icon');
    }
    })

    // End of the view password button functions  

    // The slider functions
    const slider = document.querySelector('.slider');
    const Previous = document.querySelectorAll('.back');
    const Next = document.querySelectorAll('.next');

    function  changeSection(param, index){
      if(param == 'next'){
        index = (index < 2)? index + 1 : 2;
        slider.style.transform = 'translate(' + (index) * -33.33 + '%)';
      }
      else{
        index = (index > 0)? index - 1 : 0;
        slider.style.transform = 'translateX(' + (index) * -33.33 + '%)';
      }
    }