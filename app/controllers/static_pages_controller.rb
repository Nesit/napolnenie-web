class StaticPagesController < ApplicationController
  def show
    @page = StaticPage.find_by_permalink(params[:permalink])
    redirect_to root_path and return unless @page.present?
  end
end
