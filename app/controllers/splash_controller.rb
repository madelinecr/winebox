require 'httparty'

class SplashController < ApplicationController
  def index
    get_all_wines
    @response
  end

  def get_all_wines
    base_uri = "https://api.globalwinescore.com/globalwinescores/latest/"
    @response = HTTParty.get(base_uri, headers: {
      'Authorization' => 'Token f25fdb401cbcc2c4647250073914faff37e3bd97',
      'Content-Type'  => 'application/json'
    })
  end
end   
