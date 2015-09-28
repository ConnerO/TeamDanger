class UsersController < ApplicationController
before_action :user_params, :only =>[:create,:update]

def index
	@users = user.all
end

def show
 	@user = user.find(params[:id])
end

def new
	@user = user.new
end

def create
	@user = user.new(user_params)

	if @user.save
		redirect_to @user
	end
end

def edit
	@user = user.find(params[:id])
end

def update
	@user = user.find(params[:id])

	if @user.update(user_params)
		redirect_to @user
	end
end

def destroy
	@user = user.find(params[:id])
	@user.destroy
	redirect_to '/users'
end

private

def user_params
	params.require(:user).permit(:email, :password, :first_name, :last_name, :grad_date, :application_year, :gender, :city, :state)
end

end
