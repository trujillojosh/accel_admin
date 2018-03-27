class Team < ApplicationRecord
	has_many :members, :dependent => :destroy
	has_many :corrections, :dependent => :destroy
	has_many :all_hands, :dependent => :destroy
end
