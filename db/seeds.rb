puts 'Cleaning database...'
Flat.destroy_all

puts 'creating some restaurants'
5.times do
  flat = Flat.create(
    name: Faker::Address.street_name,
    address: Faker::Address.street_address,
    description: Faker::Quote.matz,
    price_per_night: rand(50..150),
    number_of_guests: rand(2..10)
  )
  puts "flat with id #{flat.id} created!"
end
