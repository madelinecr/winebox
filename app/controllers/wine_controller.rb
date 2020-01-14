class WineController < ApplicationController
  def index
    @wines = Wine.all
  end

  def new
    @wine = Wine.new
  end

  def create
    params.permit!
    @wine = Wine.new(params[:wine])
    if @wine.save
      redirect_to wine_index_url
    end
  end
end
