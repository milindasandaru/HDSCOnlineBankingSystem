let lastScrollTop = 0;
const header = document.querySelector(".header");

window.addEventListener("scroll", function () {
    let currentScroll = window.pageYOffset || document.documentElement.scrollTop;

    if (currentScroll === 0) {
        
        header.style.backgroundColor = "rgba(26, 83, 25, 0)"; 
        header.style.top = "0"; 
    } else {
        
        let opacity = Math.min(currentScroll / 500, 0.9); 
        header.style.backgroundColor = `rgba(26, 83, 25, ${opacity})`; 
        
        if (currentScroll > lastScrollTop) {
            
            header.style.top = "-80px"; 
        } else {
            
            header.style.top = "0";
        }
    }

    lastScrollTop = currentScroll <= 0 ? 0 : currentScroll;
});