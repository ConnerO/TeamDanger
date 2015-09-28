class CollegesController < ApplicationController
before_action :college_params, :only =>[:create,:update]

def index
	@colleges = College.all
end

def show
 	@college = College.find(params[:id])
end

def new
	@college = College.new
end

def create
	@college = College.new(college_params)

	if @college.save
		redirect_to @college
	end
end

def edit
	@college = College.find(params[:id])
end

def update
	@college = College.find(params[:id])

	if @college.update(college_params)
		redirect_to @college
	end
end

def destroy
	@college = College.find(params[:id])
	@college.destroy
	redirect_to '/colleges'
end

private

def college_params
	params.require(:college).permit(:name, :city, :state, :contact_info, :tuition, :financial_aid, :scholarship, :address, :comments)
end

end
