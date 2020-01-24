class User < ActiveRecord::Base
	has_many :rented
end
