/* 
  See Smashing Magazine Tutorial:
  https://www.smashingmagazine.com/2021/11/dyslexia-friendly-mode-website/
*/
    // toggle dyslexia support
    const isPressed = window.localStorage.getItem('dyslexic') === 'true';
    if(isPressed) {
        document.querySelector('body').className = "dyslexia-mode"
    }
    else{
      document.querySelector('body').className = ""
    }
    // set the button to pressed if appropriate
    const toggle = document.getElementById('dyslexia-toggle');
    if(isPressed) {
      toggle.setAttribute('aria-pressed', 'true');
    }
    // toggle dyslexia support
    toggle.addEventListener('click', (e) => {
        let pressed = e.target.getAttribute('aria-pressed') === 'true';
        e.target.setAttribute('aria-pressed', String(!pressed));
        if(pressed){
          document.querySelector('body').className = ""
          console.log("not active")
        }
        else{
          document.querySelector('body').className = "dyslexia-mode"
          console.log("active")
        }
        
        window.localStorage.setItem('dyslexic', String(!pressed));
    });