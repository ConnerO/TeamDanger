class CheckList < ActiveRecord::Base
	belongs_to :college
	belongs_to :user
	has_one :rec_letter
end
