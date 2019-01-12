class StaticPagesController < ApplicationController

  def home
  end

  def help
  end

  def about
  end

  def search
    @artist = params[:search]
    render 'home'
  end

  private

	def user_params
	  params.require(:user).permit(:search)
	end
end
