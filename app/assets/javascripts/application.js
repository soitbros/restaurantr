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
//= require jquery.turbolinks

window.onload = init;

function init() {

$("#open-employee-create-modal").on('click', function(){
  $('#employee-create-modal').toggle();
})

$("#close-employee-create-modal").on('click', function(){
  $('#employee-create-modal').toggle();
})

$("#submit-btn").on('click', function(){
  $('#employee-create-modal').toggle();
})

$("#open-employee-list-modal").on('click', function(){
  $('#employee-list-modal').toggle();
})

$("#close-employee-list-modal").on('click', function(){
  $('#employee-list-modal').toggle();
})

$("#submit-btn").on('click', function(){
  $('#employee-list-modal').toggle();
})

$("#open-entree-create-modal").on('click', function(){
  $('#entree-create-modal').toggle();
})

$("#close-entree-create-modal").on('click', function(){
  $('#entree-create-modal').toggle();
})

$("#submit-btn").on('click', function(){
  $('#entree-create-modal').toggle();
})

$("#open-entree-list-modal").on('click', function(){
  $('#entree-list-modal').toggle();
})

$("#close-entree-list-modal").on('click', function(){
  $('#entree-list-modal').toggle();
})

$("#submit-btn").on('click', function(){
  $('#entree-list-modal').toggle();
})

$("#open-table-create-modal").on('click', function(){
  $('#table-create-modal').toggle();
})

$("#close-table-create-modal").on('click', function(){
  $('#table-create-modal').toggle();
})

$("#submit-btn").on('click', function(){
  $('#table-create-modal').toggle();
})

$("#open-table-list-modal").on('click', function(){
  $('#table-list-modal').toggle();
})

$("#close-table-list-modal").on('click', function(){
  $('#table-list-modal').toggle();
})

$("#submit-btn").on('click', function(){
  $('#table-list-modal').toggle();
})
}
