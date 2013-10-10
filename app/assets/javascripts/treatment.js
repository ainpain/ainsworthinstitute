$(document).ready(function(){
  highlight_treatment();
  expand_treatment_menu();

});

function highlight_treatment(){
  var path = location.pathname.replace(/\//g, '').replace(/-procedures/,'');
  var treatment_section = $('li.'+path);
  var treatment_title = $('li.'+path + ' a').first();
  var treatment_list = $('li.'+path + ' ul');
  treatment_list.slideDown();
  treatment_section.css({"background-color":"whitesmoke"});
  treatment_section.children('span').toggleClass('up');
  treatment_title.css({'color' : '#98B94A', 'font-weight':'400'});
}

function expand_treatment_menu(){
  var path = location.pathname.replace(/\//g, '').replace(/-procedures/,'');
  var treatment_link = $("a[href$='" + path + "']").first()
  var treatment_class = treatment_link.attr('class').replace(/-a/g, '');
  var treatment_section = $('li.'+treatment_class);
  var treatment_title = treatment_section.children('a').first();
  var treatment_list = treatment_section.children('ul').first();
  treatment_list.slideDown();
  treatment_section.css({"background-color":"whitesmoke"});
  treatment_section.children('span').toggleClass('up');
  treatment_link.css({'color' : '#369ABF'});
  treatment_title.css({'color' : '#98B94A', 'font-weight':'400'});
}