//= require jquery
//= require jquery_ujs
//= require_tree .


$(document).ready(function () {
  $('.about-link').on('click', function () {
    alert('hello');
  });



  var $buttons = $('[data-button]');
  var $taskLists = $('[data-task-list]');
  $taskLists.hide();

  $buttons.on('click', function() {
    var buttonId = this.dataset.button;
    var $taskList = $('html').find('[data-task-list=' + buttonId + ']');
    console.log($taskList);
    $taskList.toggle();
  });







//var tasklists =$('.task-list button');
//tasklists.on('click', function() {
//  var button = $(this);
//  var ul = button.parents('.task-list').find('ul');
//  ul.toggle();
//});



});