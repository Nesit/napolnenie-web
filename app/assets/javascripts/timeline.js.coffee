get_reviews =(page) ->
  $.ajax '/reviews',
    type: 'GET'
    dataType: 'json'
    data:
      page: page
    success: (response) ->
      if response.length < 5
        $("#na-responses-tree-more").remove()
      parse_reviews(response)

add_year =(year) ->
  $("#timeline").append($("div.hidden div.year_structure").html())
  div = $("#timeline").find(".na-year.new:last")
  div.attr("id", "year_#{year}")
  div.find("header").text(year)
  div.removeClass("new")

add_month =(month, year) ->
  $("#timeline").find("#year_#{year}").append($("div.hidden div.month_structure div.na-item.#{month}").clone())

add_review =(month, year, review) ->
  $("#timeline").find("#year_#{year}").find("div.na-item.#{month}").after($("div.hidden div.review_structure").html())
  div = $("#timeline").find(".na-item.response.new")
  div.find(".na-name").text(review['author'])
  div.find(".na-company").text(review['company_name'])
  div.find(".na-text").html(review['text'])
  div.removeClass('new')

parse_reviews =(reviews) ->
  for review in reviews
    year = review['year']
    month = parseInt(review['month'])
    if $(".na-year#year_#{year}").length == 0
      add_year(year)
    if $(".na-year#year_#{year}").find("div.na-item.#{month}").size() == 0
      add_month(month, year)
    add_review(month, year, review)

$ ->
  window.page = 1

  get_reviews(window.page)

  $('#na-responses-tree-more').bind 'click', ->
    window.page = window.page + 1
    get_reviews(window.page)

