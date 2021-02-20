# frozen_string_literal: true
require 'httparty'

# Flats Controller
class FlatsController < ApplicationController
  before_action :set_flat, only: %i[show edit update destroy]

  def index
    @flats = Flat.all
  end

  def show
    @map_url = generate_map_url(@flat.address)
    render layout: 'banner'
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      flash[:notice] = 'Flat was successfully created.'
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @flat.update(flat_params)

    if @flat.save
      flash[:notice] = 'Flat was successfully updated.'
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  def destroy
    @flat.destroy

    flash[:notice] = 'Flat was successfully destroyed.'
    redirect_to root_path
  end

  private

  def generate_map_url(address)
    mb = mapbox
    lonlat = geocode(address)
    "#{mb[:base_url]}#{mb[:mapping]}pin-s+000(#{lonlat})/#{lonlat},10.45,0,0/600x1000?access_token=#{mb[:access_token]}"
  end

  def geocode(address)
    mb = mapbox
    url = "#{mb[:base_url]}#{mb[:geocode]}#{address}.json?access_token=#{mb[:access_token]}"
    response = HTTParty.get(URI.escape(url))
    JSON.parse(response.body)['features'].first['geometry']['coordinates'].join(',')
  end

  def mapbox
    {
      base_url: 'https://api.mapbox.com',
      access_token: 'pk.eyJ1IjoieXVhbm1pbmdsZWUiLCJhIjoiY2trNWRwb3BoMXUwMDJxcGVidmEzMXRmYiJ9.zwxkyIx7ZvII9rSukRUXZw',
      geocode: '/geocoding/v5/mapbox.places/',
      mapping: '/styles/v1/mapbox/streets-v11/static/'
    }
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
