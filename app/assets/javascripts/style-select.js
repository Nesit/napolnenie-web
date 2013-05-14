$(document).ready(function()
{
  var select = $('.na-custom-select select');
  select.css({'z-index': 10, 'opacity': 0, '-khtml-appearance' : 'none'})
  $('#insert-select').html("Выберите услугу")

  select.change(function(){
    select.each(function(){
      var title = $(this).attr('title');
      if( $('option:selected', this).val() != ''  )
        title = $('option:selected',this).text();

      val = $('option:selected',this).text();
      $('#insert-select').html(val)
    });
  });
});
