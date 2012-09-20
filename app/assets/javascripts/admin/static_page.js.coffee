remove_slider_photo =(id) ->
  $.ajax '/admin/static_pages/destroy_slider_photo',
      type: 'DELETE'
      dataType: 'json'
      data: {id: id}

$ ->
  return if $("body.admin_static_pages").length == 0

  $("a.remove_slider_photo").bind 'click', () ->
    remove_slider_photo($(this).attr('data-id'))
    $(this).parent('div.photo').remove()
    false
