class CheckListsController < ApplicationController

# before_filter :require_login

	def index
		@check_lists = CheckList.all
		@colleges = College.all
		current_user
	end

	def show
	 	@check_list = CheckList.find(params[:id])
	 	@colleges = College.all
	 	current_user
	end

	def new
		@check_list = CheckList.new
		@colleges = College.all
		current_user
	end

	def create
		@check_list = CheckList.new(check_list_params)
		if @check_list.deadline
			if @check_list.save
				redirect_to @check_list
			end
		else
			redirect_to '/test'
		end
	end

	def edit
		@check_list = CheckList.find(params[:id])
	end

	def update
		@check_list = CheckList.find(params[:id])

		if @check_list.update(check_list_params)
			redirect_to @check_list
		end
	end

	def destroy
		@check_list = CheckList.find(params[:id])
		@check_list.destroy
		redirect_to '/check_lists'
	end

private

	def check_list_params
		params.require(:check_list).permit(:deadline, :transcript, :sat, :act, :application, :essay, :tour_date, :early_acceptance, :ranking, :rec_letters, :user_id, :college_id)
	end

private

  def require_login
    unless current_user
      redirect_to root_url, notice: 'You need to be logged in to post!'
  	end
  end

end
