const menuBurger = document.querySelector('.header__burger-menu');

menuBurger.addEventListener('click', () => {
    menuBurger.classList.toggle('open');
});