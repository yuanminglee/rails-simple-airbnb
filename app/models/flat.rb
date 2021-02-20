class Flat < ApplicationRecord
  validates_presence_of :name, :address, :price_per_night, :number_of_guests
end
