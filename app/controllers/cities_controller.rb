class CitiesController < ApplicationController

  def index
		@cities_arr = City.all
  end

  def show
    @cities_gossips = []
    @city = City.find(params[:id])
    Gossip.where(city_id: params[:id]).each do |gossip|
      @cities_gossips << gossip.title
    end
  puts @cities_gossips
  


    #@gossip.user = User.find_by(first_name: params[:user])
    puts "$$$$$$$$$$$$$ #{params}$$$$$$$$$$$$$$$$$$$$$$"
  end
  

end