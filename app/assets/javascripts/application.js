// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

// Shows animation for login
// $("#loginbutton").click(function(){
//     $("#your_id").style.visibility = 'visible';
// });

// For Upload Photo 
// function uploadPhoto() {
//     $(".uploadbutton").click(function(){
//         console.log("HELLO");
//         // $("#photo_id").style.visibility = 'visible';
//         $("#photo_id").show();
//         console.log("changed visibility!!!!");
//     })
// }

$(document).ready(function () {
  console.log("ready!!!");
  $("#uploadbutton").click(function () {
    $("#photo_id").show();
  });
});

// $(document).ready(uploadPhoto());