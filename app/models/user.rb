class User < ApplicationRecord
	def to_s
		intra
	end
	has_many :attendances, :dependent => :destroy
end
