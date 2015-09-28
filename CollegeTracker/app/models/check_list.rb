class CheckList < ActiveRecord::Base
	belongs_to :college
	belongs_to :user
	has_many :rec_letters
end
