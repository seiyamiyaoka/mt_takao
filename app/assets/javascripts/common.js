$(function(){
  $(window).on('resize', function(){
    var $menu = $('.header__ham__menu');
    var menuDisp = $('header__nav').css('display');
    if(menuDisp == 'none') {
      $menu.css('display', 'block');
    } else {
      $menu.css('display', 'none');
    }
  });

  $('#ham__menu__btn').on('click', function() {
    $('.header__ham__menu').slideToggle(400);
  });
});