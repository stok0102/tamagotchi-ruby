require ('sinatra')
require ('sinatra/reloader')
require ('./lib/tamagotchi')
require ('rufus/scheduler')
also_reload ('lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/name') do
  @@name = params.fetch('name')
  @@my_pet = Tamagotchi.new(@@name)
  @@food = @@my_pet.food_level()
  @@sleep = @@my_pet.sleep_level()
  @@play = @@my_pet.activity_level()
  erb(:index)
end

get('/eat') do
  @@food = @@my_pet.eat()
  erb(:index)
end

get('/sleep') do
  @@sleep = @@my_pet.nap()
  erb(:index)
end

get('/play') do
  @@play = @@my_pet.play()
  erb(:index)
end
