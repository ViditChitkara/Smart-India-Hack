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

function onBodyLoad() {

  var interval;
  submitted = false;

  $("#portal-form select").on('change',function() {
    console.log("here");
    clrInterval();
  })

  $("#portal-form input").on('change',function() {
    clrInterval();
  })

  $("#portal-form").on('submit',function() {
    console.log("test");
    submitted = true;
    clrInterval();
    interval = setInterval(refreshPartial, 3000);
  });

  function clrInterval() {
    if(interval) {
      clearInterval(interval);
    }
  }

  function refreshPartial() {
    console.log("test");
    market_id = $("#markets").val();
    month = $("#month").val();
    str = '/get-quotation-items?market_id='+market_id+"&month="+month;
    $.ajax({
      type: 'GET',
      url: str,
      success: function() {
      }
   })
  }


}

window.addEventListener("load", function(event) {
    onBodyLoad();
});