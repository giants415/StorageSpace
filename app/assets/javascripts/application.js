// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require materialize-sprockets
//= require_tree .

$(document).ready(function(){
  $('.carousel.carousel-slider').carousel({full_width: true});

  $('.slider').slider({full_width: true});

  $('.card').on('click', function(){
    $('.slider').slider('pause');
  });

  $('#star1').click(function (){
    $('#star1').attr('src', "http://pngimg.com/upload/star_PNG1592.png");
  });

  $('#star2').click(function(){
    $('#star2').attr('src', "http://pngimg.com/upload/star_PNG1592.png");
  });

  $('#star3').click(function(){
    $('#star3').attr('src', "http://pngimg.com/upload/star_PNG1592.png");
  });

  $('#star4').click(function(){
    $('#star4').attr('src', "http://pngimg.com/upload/star_PNG1592.png");
  });

  $('#star5').click(function(){
    $('#star5').attr('src', "http://pngimg.com/upload/star_PNG1592.png");
  });
});
