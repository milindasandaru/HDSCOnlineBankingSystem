const header = document.querySelector(".header");

window.addEventListener("scroll", function () {
    let currentScroll = window.pageYOffset || document.documentElement.scrollTop;

    if (currentScroll > 0) {
        
        if (currentScroll > lastScrollTop) {
            header.style.top = "-80px"; 
        } else {
            header.style.top = "0";
        }
    } else {
        header.style.top = "0";
    }

    lastScrollTop = currentScroll <= 0 ? 0 : currentScroll;
});
