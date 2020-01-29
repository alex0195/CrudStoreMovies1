class RentedsController < ApplicationController
	def index
		@rented = Rented.all
	end

	def new
		@rented = Rented.new
	end

	def create
		@serie = params[:serie_id]
		if @serie == "0"
			@pelicula = params[:movie_id]
			@pelicula.each do |movie|
				Rails.logger.debug(movie)
				Rented.create(movie_id: movie, serie_id:params[:serie_id], user_id: params[:user_id])
			end
		else
			@serie.each do |serie|
				Rails.logger.debug(serie)
				Rented.create(movie_id: params[:movie_id], serie_id:serie, user_id: params[:user_id])
			end
		end

			redirect_to index_path
	end

	def edit
		@rented = Rented.find(params[:id])
		@movies = Movie.all
		@series = Serie.all
		@users = User.all
	end

	def update
		 @rented = Rented.find(params[:id])
		 if @rented.update(rented_params)
		 	redirect_to index_path
		 else
		 	render :edit
		 end
	end

	def delete
		@rented = Rented.find(params[:id])
		@rented.destroy
		redirect_to index_path
	end


	private
		def rented_params
			params.require(:movie_id,:serie_id,:user_id)
		end	

end
