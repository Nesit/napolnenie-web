class ServicesController < ApplicationController
  def show
    @service = OurService.find(params[:id])
    set_seo_by_service(@service)
  end
end
