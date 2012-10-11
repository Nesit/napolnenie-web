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

    first.prependTo(inner).fadeOut('fast')
    inner.children(':last').fadeIn('fast')

  })

$('.na-slider .na-slider-prev')
  .click(function()
  {
    var inner = $(this).siblings('.na-inner')
    ,   last  = inner.children(':first')
    ,   first = inner.children(':last')

    last.appendTo(inner).fadeIn('fast')
    first.fadeOut('fast')
  })

$('#why-us .na-forms .na-button[data-to]')
  .click(function()
  {
    var cl = $(this).attr('data-to')
    $('#why-us .na-forms .na-form.'+cl)
      .fadeIn('fast', function()
      {
        $(this)
        .siblings('.na-form')
        .hide()
      })
      .css('z-index', 2)
      .siblings('.na-form')
      .css('z-index', 1)
  })

$('#service nav .na-item')
  .click(function()
  {
    $(this).addClass('active')
      .siblings('.na-item')
      .removeClass('active')

  })

$(window).scroll(function()
{
  $('.na-parallax-wrapper').each(function()
  {
    if ($(window).scrollTop() + window.innerHeight > $(this).offset().top)
    {
      var offset = $(this).height() - ( $(this).height() + $(this).offset().top - $(window).scrollTop() )/2

      $(this).find('.na-parallax.back')
        .css('background-position', '0 '+(offset/1.5)+'px')

      $(this).find('.na-parallax.front')
        .css('background-position', '0 '+offset+'px')
    }

  })
})

var sliderCounters = []
$('.na-slider')
  .each(function(i)
  {
    var slider = $(this)
    ,   bgs    = $(this).find('.na-slider-bg img')
    ,   imgs   = slider.find('.na-inner > *')
    ,   first  = slider.find('.na-inner > *:last-child')

    imgs.hide()

    sliderCounters[i] = 3

    bgs.each(function()
    {
      var img = new Image()
      ,   el  = $(this)

      img.onload = 
        function ()
        {
          el.fadeIn('fast')
          sliderCounters[i]--
          if (!sliderCounters[i]) first.fadeIn('fast')
        }
      img.src = el.attr('src')
    })
  })

$('#na-top').click(function(e)
{
  e.preventDefault()
  $("html, body").animate({ scrollTop: 0 }, "slow")
})

})})(jQuery)
