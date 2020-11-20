100.times do |i|
  Restaurant.create name: Faker::Restaurant.name, address: Faker::Address.street_address
  puts "#{(i + 1).ordinalize} restaurant created"
  sleep 1
end
