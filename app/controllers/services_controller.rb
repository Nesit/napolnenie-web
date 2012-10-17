class ServicesController < ApplicationController
  def show
    @service = OurService.find(params[:id])
  end
end
