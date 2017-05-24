class Api::UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.image_url = ""
      @user.image_url = "http://res.cloudinary.com/jules-costa/image/upload/v1495413134/user-2ef10cd87167a7021991eaaf0fb688ea1fda37f520b069b2b523d3a8e399473d_jphioe.png"
    end
    if @user.save
      login(@user)
      render '/api/users/show'
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      render 'api/users/show'
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :biography, :image_url)
  end
end
