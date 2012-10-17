class ApplicationController < ActionController::Base
  protect_from_forgery

  def set_seo_by_page(page)
    @title = page.title
    @keywords = page.keywords
    @description = page.description
    @image = page.image.url(:thumb, false)
  end
end
