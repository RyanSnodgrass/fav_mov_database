require 'sinatra'
require "sinatra/activerecord"

#RACK_ENV=production rackup config.ru
set :database, "sqlite3:///to_do_class_app.db"

get "/error" do
	"whoopsies try again"
end

get "/addition" do
	erb :"fav_mov/addition_index"
end

get "/fav_mov_app" do	
	@favs = FavoriteMovie.find(params[:id])
	erb :"fav_mov/index"
end

# get "/remove" do
# 	@favs = FavoriteMovie.find(params[:id])
# 	erb :"fav_mov/remove_index"
# end
 
# post "/favs" do
# 	name = params[:mov_name]
# 	description = params[:mov_desc]
# 	movie = {name => description}
# 	Favorites.add_mov(movie)
# 	redirect "./fav_mov_app"
# end

class FavoriteMovie < ActiveRecord::Base
	def meet_criteria?
		## validations
	end
end