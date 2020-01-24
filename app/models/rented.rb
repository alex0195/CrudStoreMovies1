class Rented < ActiveRecord::Base
	belongs_to :movie
	belongs_to :serie
	belongs_to :user
end
