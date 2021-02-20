Flat.destroy_all
10.times do
  Flat.create!(
    name: Faker::Address.community,
    address: Faker::Address.full_address,
    description: Faker::TvShows::SiliconValley.quote,
    price_per_night: rand(300),
    number_of_guests: rand(10)
  )
end
