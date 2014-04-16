require 'sinatra'
require "sinatra/activerecord"

#RACK_ENV=production rackup config.ru
set :database, "sqlite3:///to_do_class_app.db"

get "/favorite_movies" do
	@favs = FavoriteMovie.all
	erb :"fav_mov/index"
end

get "/error" do
	"whoopsies try again"
end

get "/addition" do

	erb :"fav_mov/addition_index"
end

# put "/edit/:id" do
# 	@favs = FavoriteMovie.find(params[:id])
# end


	get "/edit/:id" do
		@movie_to_remove = FavoriteMovie.find(params[:id])
		erb :"fav_mov/show"
	end

 delete "/edit/:id" do
 	@movie_to_remove = FavoriteMovie.find(params[:id])
 	@movie_to_remove.delete
 	redirect "./favorite_movies"
 end

get "/remove" do
	@favs = FavoriteMovie.all
	erb :"fav_mov/remove_index"
end

post "/add_post" do
	movie = FavoriteMovie.new
	movie.title = params[:mov_name]
	movie.description = params[:mov_desc]
	movie.save
	redirect "./favorite_movies"
end
# post "/favs" do
# 	name = params[:mov_name]
# 	description = params[:mov_desc]
# 	movie = {name => description}
# 	Favorites.add_mov(movie)
# 	redirect "./fav_mov_app"
# end

class FavoriteMovie < ActiveRecord::Base
	def add_movie

		## validations
	end
end