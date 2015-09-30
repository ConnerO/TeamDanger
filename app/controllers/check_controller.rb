class CheckController < ApplicationController

	def new
		@check_list = CheckList.new
		@colleges = College.all
		current_user
	end
end