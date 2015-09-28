class CheckList < ActiveRecord::Base
	belongs_to :college
	belongs_to :user
end
