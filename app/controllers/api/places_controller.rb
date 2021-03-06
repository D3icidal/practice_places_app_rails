class Api::PlacesController < ApplicationController
  # => API PLACES

  #index
  def index
    @places = Place.all
    puts "\n\n\n\t INSIDE INDEX!! places length and first place: ##{@places.length}\n#{@places.first.name}"
    render json: @places
  end

  def create
    @place = Place.new(name: params[:name], address: params[:address])
    if @place.save!
      puts "\n\n\tNEW PLACE ADDED: #{@place}"
      render json: @place
    end

  end
end