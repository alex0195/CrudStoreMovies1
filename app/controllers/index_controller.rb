class IndexController < ApplicationController
	def index
		@users = User.all
		@movies = Movie.all
		@series = Serie.all
		@renteds = Rented.all
		@rented = Rented.new
		@user = User.new
		#@peliculas = Rented.joins("INNER JOIN movies ON renteds.movie_id = movies.id")
		@peliculas = Rented.select("*").joins("INNER JOIN movies ON renteds.movie_id = movies.id INNER JOIN users ON renteds.user_id = users.id")
		@aseries = Rented.select("*").joins("INNER JOIN series ON renteds.serie_id = series.id INNER JOIN users ON renteds.user_id = users.id")
	end
end