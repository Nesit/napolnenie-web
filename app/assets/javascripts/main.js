(function($){$(document).ready(function(){

    $(window).scroll(function() {
	if (($(window).scrollTop() > 500) && !($('#why-us .na-forms .na-button .popap').hasClass('shown'))) {
	    $('#why-us .na-forms .na-button .popap').fadeIn(100).delay(1000).fadeOut(100);
	    $('#why-us .na-forms .na-button .popap').addClass('shown');
	}
    });

    $('#new_service_request').submit(function() {
	$('#why-us .na-forms .na-form .na-inner form.form1').hide();
	$('#why-us .form_message.message1').show();
    });

    $('#new_audit_request').submit(function() {
	$('#why-us .na-forms .na-form .na-inner form.form2').hide();
	$('#why-us .form_message.message2').show();
    });

    $('#new_message').submit(function() {
	$('.na-mail .na-inner form.form3').hide();
	$('.na-inner .form_message.message3').show();
    });

    $('footer .na-social .mail').click(function() {
	$('').hide();
	$('.na-mail').show();
	$("form").validate();
	return false
    })


    $('#na-nav a')
	.click(function(e)
	       {
		   var url = $(this).attr('href').slice(1)

		   if ( window.location.pathname == '/' && url.substr(0,1) == '#')
		   {
		       e.preventDefault()
		   }

		   $(this).addClass('active')
		       .siblings('.active')
		       .removeClass('active')

		   $("html, body").animate({ scrollTop: $(url).offset().top }, "slow")
	       })

 /* $('.na-slider .na-slider-next')
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
		   first.fadeOut('slow')
	       })*/

	$('#na-inner').bxSlider();

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
		   $("form").validate()
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
								var offset = $(this).height() - ( $(this).height() + $(this).offset().top - $(window).scrollTop() )*1.5

								$(this).find('.na-parallax.back')
								    .css('background-position', '0 '+(offset/1.7)+'px')

								$(this).find('.na-parallax.front')
								    .css('background-position', '300px '+(offset/1.4)+'px')
							    }

							})
			     })

    if ( (window.location.hash).length )
    {
	$('a[href="/'+window.location.hash+'"]').addClass('active')
    }
    else if ( (window.location.pathname).length )
    {
	$('a[href="'+window.location.pathname+'"]').addClass('active')
    }

    var sliderCounters = []
    $('.na-slider')
	.each(function(i)
	      {
		  var slider = $(this)
		  ,   bgs    = $(this).find('.na-slider-bg img')
		  ,   imgs   =  slider.find('.na-inner > *')
		  ,   first  =  slider.find('.na-inner > *:last-child')

		  imgs.hide()

		  sliderCounters[i] = 3

		  bgs.each(function()
			   {
			       var img = new Image()
			       ,   el  = $(this)

			       img.onload =
				   function ()
			       {
				   sliderCounters[i]--
				   if (!sliderCounters[i])
				   {
				       bgs.each(function(i)
						{
						    if (i < 2) $(this).delay(500*(i+1)).fadeIn('normal')
						    else
							$(this).delay(500*(i+1)).fadeIn('normal',function()
											{
											    first.delay(500).fadeIn('fast',function(){ bgs.fadeOut('fast') })
											})
						})
					   }
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
