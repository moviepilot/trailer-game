class ApiController < ApplicationController

  def categories
    render json: Category.all
  end

  def trailers
    trailers = Category.find(params[:category_id]).trailers
    render json: trailers
  end

  def users
  end

end
