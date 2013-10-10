$(document).ready(function(){

  $('.contact-form .form-button').on('click', show_msg_sending);
  $('.ebook-button').on('click', show_ebook_sending);
  $('#mobile-nav-menu').on('click', toggle_nav_menu);
  $('.show-for-small .article-nav-title').on('click', toggle_sub_nav_menu);
  $('a[data-reveal-id=myModal]').on('click', reset_form);
  $('a[data-reveal-id=ebookModal]').on('click', reset_form);
  $('ul.article-nav-list li').on('click', toggle_treatment_sub_nav);
  $(window).scroll(function(){

    // hide & show secondary scrolling navs
    if ($(window).scrollTop() > 150) {
      $('#scrolling-nav').slideDown(400);
      $('#scroll-footer').slideDown(600);
    }
    if ($(window).scrollTop() < 150) {
      $('#scroll-footer').slideUp(400);
      $('#scrolling-nav').slideUp(200);
    }

    if ($(window).scrollTop() > 150) {
      $('.request-consultation-green').fadeIn().css({
        'position': 'fixed',
        'right': '2%',
        'z-index': '999',
        'top' : '0px'
      });
    }
    if ($(window).scrollTop() < 150) {
      $('.request-consultation-green').fadeOut(150);
    }
  });

})

function toggle_treatment_sub_nav() {
  $(this).children('span').toggleClass('up');
  $(this).children('ul.treatment-sub-list').slideToggle();
}

function show_msg_sending(){
  $('.contact-form .form-button').css({'background-color':'grey'}).val('Sending...');
}

function show_ebook_sending(){
  $('.ebook-button').css({'background-color':'grey'}).val('Sending...');
}

function reset_form(){
  $('#myModal h5').hide();
  $('#myModal form').show();
  $('#ebookModal h5').show();
  $('#ebookModal h5.ebook-conf').hide();
  $('#ebookModal form').show();
  $('#email').val('');
}

function toggle_sub_nav_menu() {
  $('.sub-nav-mobile').slideToggle(450);
  $('.article-nav-title span').toggleClass('up');
}

function toggle_nav_menu(){
  $('#mobile-index-nav').slideToggle(250);
}