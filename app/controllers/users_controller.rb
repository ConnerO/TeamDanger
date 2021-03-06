class UsersController < ApplicationController
before_action :user_params, :only =>[:create,:update]

def index
	@users = User.all
end

def new
	@user = User.new
end

def show
 	@user = User.find(params[:id])
end

def create
	@user = User.new(user_params)

	if @user.save
		auto_login(@user)
		redirect_to @user
	else
		render 'new'
	end
end

def edit
	@user = User.find(params[:id])
end

def update
	@user = User.find(params[:id])

	if @user.update(user_params)
		redirect_to @user
	end
end

def destroy
	@user = User.find(params[:id])
	@user.destroy
	redirect_to '/users'
end

private

def user_params
	params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :grad_date, :application_year, :gender, :city, :state)
end

end
