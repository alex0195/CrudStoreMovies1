class RentedsController < ApplicationController
	def index
		@rented = Rented.all
	end

	def new
		@rented = Rented.new
	end

	def create
		@rented = Rented.new(rented_params)
		if @rented.save
			redirect_to index_path
		else
			render :new
		end
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
			params.require(:rented).permit(:movie_id,:serie_id,:user_id)
		end	

end
