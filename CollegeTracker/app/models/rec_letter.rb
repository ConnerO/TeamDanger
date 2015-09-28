class RecLetter < ActiveRecord::Base
	has_one :user
	has_many :check_lists
end
