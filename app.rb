require("sinatra")
require("sinatra/reloader")
require("./lib/places_been")

get('/') do
  @locations = Place.bucket()
  erb(:location_list)
end

post('/confirmation') do
  location_string = params.fetch("location")
  location = Place.new(location_string)
  location.save()
  erb(:confirmation)
end

post('/clear') do
  Place.clear()
  redirect ('/')
end
