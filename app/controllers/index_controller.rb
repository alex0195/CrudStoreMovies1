class IndexController < ApplicationController
	def index
		@users = User.all
		@movies = Movie.all
		@series = Serie.all
		@renteds = Rented.all
		@rented = Rented.new
		@user = User.new
		@peliculas = Rented.joins("INNER JOIN movies ON renteds.movie_id = movies.id")
		@uren = Rented.joins("INNER JOIN movies ON renteds.movie_id = movies.id")
		@aseries = Rented.joins("INNER JOIN series ON renteds.serie_id = series.id")
	end
end