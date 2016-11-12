require 'sinatra/base'

#controllers~ must require them as added. these correspond to the files that are listed under the models folder
require './controllers/application_controller'
require './controllers/destination_controller'

#models~ must have corresponding .rb file in models folder

require './models/destination'

map('/') { run ApplicationController }
map ('/api/destinations') { run DestinationController }


#before and after filter

before '/*' do
  puts "Route Log:"
  puts request.host
  puts params
  puts request.path
  puts request.body
end

after '/*' do
  puts 'Completed Route Log:'
  puts response.body
  puts response.status
end


