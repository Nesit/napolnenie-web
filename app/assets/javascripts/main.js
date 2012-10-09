(function($){$(document).ready(function(){

$('#na-nav a')
  .click(function()
  {
    $(this).addClass('active')
      .siblings('.active')
      .removeClass('active')
  })

$('.na-slider .na-slider-next')
  .click(function()
  {
    var inner = $(this).siblings('.na-inner')
    ,   first = inner.children(':last')

    first.fadeOut('fast', function()
    { 
      first.prependTo(inner).show()
    })
  })

$('.na-slider .na-slider-prev')
  .click(function()
  {
    var inner = $(this).siblings('.na-inner')
    ,   last = inner.children(':first')
    

    last.hide().appendTo(inner).fadeIn('fast')
  })

})})(jQuery)
