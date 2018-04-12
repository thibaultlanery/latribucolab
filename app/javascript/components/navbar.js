// $( document ).ready(function {
//   navbar.classList.remove('navbar-logo-white');
// });

// $(document).ready(function(){
//     $(".navbar-logo-white").remove();
// });




 // $(document).ready(function() {
 //            $(this).removeClass("navbar-logo-white");
 //         });

function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon');
  window.addEventListener('scroll', () => {
    if (window.scrollY >= window.innerHeight) {
      navbar.classList.add('navbar-wagon-white', 'navbar-logo-white');
    } else {
      navbar.classList.remove('navbar-wagon-white', 'navbar-logo-white');
    }
  });
}

export { initUpdateNavbarOnScroll };
// initUpdateNavbarOnScroll();
