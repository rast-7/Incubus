class ErrorsController < ApplicationController

	def internal_error:
		flash[:danger] = "Please check the spelling of the artist!!"
		redirect_to 'static_pages/home'
	end
end
