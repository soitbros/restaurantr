// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

console.log("say what")

window.onload = init;

function init(){

  var selectName = $('select').attr('name');

  // add a hidden element with the same name as the select
  var hidden = $('<input type="hidden" name="'+selectName+'">');
  hidden.val($('select').val());
  hidden.insertAfter($('select'));

  $("select option").unwrap().each(function() {
      var btn = $('<div class="btn">'+$(this).text()+'</div>');
      if($(this).is(':checked')) btn.addClass('on');
      $(this).replaceWith(btn);
  });

  $(document).on('click', '.btn', function() {
      $('.btn').removeClass('on');
      $(this).addClass('on');
      $('input[name="'+selectName+'"]').val($(this).text());
  });

};
