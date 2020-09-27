class UsersController < ApplicationController
  def index
		@users = User.all
  end

  def new
  end

  def home
  end

	def create
		@user = User.new(user_params)

		@user.save
		redirect_to '/users/index'
	end

	private
		def	user_params
			params.require(:user).permit(:name, :password)
		end
end