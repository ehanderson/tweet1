$(document).ready(function() {
  $('#my_tweet').submit(function(event){
    var waiting = ('<p>Processing...</p>')
    $('form').after(waiting);
    event.preventDefault();
     
    var data = $(this).serialize();
   

    $.post('/', data, function(response){
      $('p').remove();


    $('.textbox').prop('disabled', true);
    $
      console.log(response);
      $('form').after(data);  
      $('form').append(response);
     });
    

  });
});
