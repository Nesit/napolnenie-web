class MainController < ApplicationController
  def index
    @page = StaticPage.find_page(:main)
    set_seo_by_page(@page)
  end
end
