class Movie < ActiveRecord::Base
	has_many :rented
end