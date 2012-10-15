add_banner =(page_id, text) ->
  $.ajax '/admin/static_pages/add_banner',
    type: 'POST'
    dataType: 'json'
    data:
      banner:
        static_page_id: page_id
        text: text
    complete: (data) ->
      $(".banners").append(data.responseText)
      $("#add_banner_text").val('')  

$ ->
  return if $("body.admin_static_pages").length == 0

  $("#add_banner").bind 'click', () ->
    page_id = $("#static_page_id").val()
    text = $("#add_banner_text").val()
  
    add_banner(page_id, text)
    false