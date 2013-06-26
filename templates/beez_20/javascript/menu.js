//二级菜单下拉
$(document).ready(function(){
  $('li.mainlevel').mousemove(function(){
  $(this).addClass("hover");
  //$(this).find('div').slideDown("1000");
  $(this).find('div').show();
  $(".sub_menu:not(:animated)");
  $(this).find('a:first').addClass("selected");
  });
  $('li.mainlevel').mouseleave(function(){
  $(this).removeClass("hover");
  //$(this).find('div').slideUp("1000");
  $(this).find('div').hide();
  $(".sub_menu:not(:animated)");
  $(this).find('a:first').removeClass("selected");
  });
  $('div.sub_nav li').mousemove(function(){
  $(this).find('a').addClass("sub_menu");
  })
  $('div.sub_nav li').mouseleave(function(){
  $(this).find('a').removeClass("sub_menu");
  })
});
