class Api::UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save

    else

    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :biography, :image_url)
  end
end
