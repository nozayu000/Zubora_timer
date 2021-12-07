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
//= require jquery
//= require jquery_ujs

//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {
  var sec = 0;
  var min = 0;
  var hour = 0;
  var rest_mode = false;
  var work_mode = true;
  var set_num = 0;
  var timer;

  // スタート
  $('#start').click(function() {
    // 00:00:00から開始
    sec = 0;
    min = 0;
    hour = 0;
    $('#clock').html('0');
    timer = setInterval(countup, 1000);

    $(this).prop('disabled', true);
    $('#stop,#reset').prop('disabled', false);
  });

  // ストップ
  $('#stop').click(function() {
    // 一時停止
    clearInterval(timer);

    $(this).prop('disabled', true);
    $('#restart').prop('disabled', false);
  });

  // リスタート
  $('#restart').click(function() {
    // 一時停止から再開
    timer = setInterval(countup, 1000);

    $(this).prop('disabled', true);
    $('#stop').prop('disabled', false);
  });

  // リセット
  $('#reset').click(function() {
    // 初期状態
    sec = 0;
    min = 0;
    hour = 0;
    $('#clock').html('0');
    clearInterval(timer);
    $('#stop,#restart,#reset').prop('disabled', true);
    $('#start').prop('disabled', false);
  });

  //カウントアップ
  function countup(){
    sec += 1;
    var work_time = $("#timer_work_seconds").val();
    var rest_time = $("#timer_rest_seconds").val();
    if (work_time == sec && work_mode) {
    $('#clock').html(sec);
      setTimeout(function(){
      break_start();
      }, 999);
    }else if(rest_time == sec && rest_mode){
      $('#clock').html(sec);
      setTimeout(function(){
        work_start();
      }, 999);
    }else {
      $('#clock').html(sec);
    }
  }

  function break_start(){
    $('#clock').html('0')
    sec = 0;
    clearInterval(timer);
    timer = setInterval(countup, 1000);
    rest_mode = true
    work_mode = false
  }

  function work_start(){
    var set_time = $("#timer_set_time").val();
    set_num ++;
    if (set_num == set_time) {
      $('#clock').html('0')
      sec = 0;
      clearInterval(timer);
    }else {
      $('#clock').html('0')
      sec = 0;
      clearInterval(timer);
      timer = setInterval(countup, 1000);
      rest_mode = false
      work_mode = true
    }
  }

  function reset (){
    $('#clock').html('0')
    sec = 0;
    clearInterval(timer);
  }
});