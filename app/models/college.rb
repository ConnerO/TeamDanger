class College < ActiveRecord::Base
	has_many(:check_lists, { :through => :users })
end
