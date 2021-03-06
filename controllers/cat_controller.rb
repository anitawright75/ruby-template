class DestinationController < ApplicationController #this line is showing the Destination Controller inheriting the info from Application Controller

  get '/' do
    # { :message => 'all items will show'}.to_json
    # get all
    Destination.all.to_json
  end

  #below is all part of a RESTful controller
  get '/:id' do
    @id = params[:id]
    Destination.find(@id).to_json #get by id
  end

  post '/' do  #create
    @country = params[:country]
    @city = params[:city]
    @location = params[:location]


    @model = Destination.new
    @model.country = @country
    @model.city = @city
    @model.location = @location
    @model.save

    # place a breakpoint in ruby!
    # binding.pry ~ stops the code for testing
    
    @model.to_json
  end

  patch '/:id' do
    # update
    @id = params[:id]
    @country = params[:country]
    @city = params[:city]
    @location= params[:location]


    @model = Destination.find(@id)
    @model.country = @country
    @model.city = @city
    @model.location = @location
    @model.save
    
    @model.to_json
  end

  delete '/:id' do
    # delete
    @id = params[:id]
    @model = Destination.find(@id)
    @model.destroy
    { :message => "Item of id " + @id + " was removed."}.to_json
  end


  # get '/fab' do
  #   # teach you how to rule the database
  #   # activerecord because it is awesome
  #   # create
  #   @christopher = Superstar.new
  #   @christopher.talent = 'Socialiate'
  #   @christopher.name = 'Christopher McAwesome'
  #   @christopher.outfit = 'blue sweater'
  #   @christopher.save
  #   @christopher.to_json
  #   # crud
  #   # delete
  #   # update
  #   # read
  # end

end