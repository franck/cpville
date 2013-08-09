class LookupController < ApplicationController

  respond_to :json

  def show
    @city = City.where(postalcode: params[:id]).first
    respond_with @city
  end
end
