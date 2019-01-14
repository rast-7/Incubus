class UsersController < ApplicationController
  before_action :logged_in_user, only: [:new]
  
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		log_in @user
  		flash[:success] = "Welcome to Incubus!"
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end

  private

  	def user_params
  	  params.require(:user).permit(:name, :email, :password,
  	  							   :password_confirmation)
  	end

    def logged_in_user
      if logged_in?
        flash[:danger] = "You are already logged in!!"
        redirect_to current_user
      end
    end
end
