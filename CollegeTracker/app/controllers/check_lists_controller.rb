class CheckListsController < ApplicationController
before_action :check_list_params, :only =>[:create,:update]

def index
	@check_lists = Check_list.all
end

def show
 	@check_list = Check_list.find(params[:id])
end

def new
	@check_list = Check_list.new
end

def create
	@check_list = Check_list.new(check_list_params)

	if @check_list.save
		redirect_to @check_list
	end
end

def edit
	@check_list = Check_list.find(params[:id])
end

def update
	@check_list = Check_list.find(params[:id])

	if @check_list.update(check_list_params)
		redirect_to @check_list
	end
end

def destroy
	@check_list = Check_list.find(params[:id])
	@check_list.destroy
	redirect_to '/check_lists'
end

private

def check_list_params
	params.require(:check_list).permit(:deadline, :transcript, :sat, :act, :application, :tour_date, :early_acceptance, :ranking)
end

end
