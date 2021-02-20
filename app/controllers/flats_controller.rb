# frozen_string_literal: true

# Flats Controller
class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end
end
