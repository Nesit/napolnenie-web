add_banner =(page_id, text, image) ->
  data = new FormData()
  jQuery.each $("#add_banner_image")[0].files, (i, file) ->
    data.append 'banner[image]', file

  data.append 'banner[static_page_id]', page_id
  data.append 'banner[text]', text

  $.ajax '/admin/static_pages/add_banner',
    type: 'POST'
    data: data
    cache: false
    contentType: false
    processData: false
    complete: (response) ->
      $(".banners").append(response.responseText)
      $("#add_banner_text").val('')
      $("#add_banner_image").val('')

$ ->
  return if $("body.admin_static_pages").length == 0

  $("#add_banner").bind 'click', () ->
    page_id = $("#static_page_id").val()
    text = $("#add_banner_text").val()
    image = $("#add_banner_image").val()
  
    add_banner(page_id, text, image)
    false