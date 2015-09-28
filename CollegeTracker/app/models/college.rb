class College < ActiveRecord::Base
	
	has_many :users
	has_many(:check_lists, { :through => :users })
end
