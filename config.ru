require 'sinatra/base'

#controllers
require './controllers/application_controller'
require './controllers/destination_controller'

#models

require './models/destination'

map('/') { run ApplicationController }
map ('/api/destinations') { run DestinationController }


#before and after filter

before '/*' do
  puts "Route Log:"
  puts request.host
  puts params
  puts request.path
end

after '/*' do
  puts
  'Completed Route Log:'
  puts response.body
  puts response.status
end


