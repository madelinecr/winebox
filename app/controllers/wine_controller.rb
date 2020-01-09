class WineController < ApplicationController
  def index
    @wines = Wine.all
  end
end
