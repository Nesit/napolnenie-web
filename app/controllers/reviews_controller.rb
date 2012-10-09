class ReviewsController < ApplicationController
  def show
    @reviews = Review.paginate(:page => params[:page], :per_page => 5).order('create_date DESC')
    respond_to do |format|
      format.json  { render :json => @reviews.map {|r| r.for_timeline}.to_json }
    end
  end
end
