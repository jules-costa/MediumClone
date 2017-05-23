class Api::FollowsController < ApplicationController
  def create
    @follow = Follow.new(follow_params)
    @user = @follow.followee
    if @follow.save
      render "api/users/show"
    else
      render json: @follow.errors.full_messages, status: 422
    end
  end

  def destroy
    @follow = Follow.find(params[:id])
    @user = @follow.follower
    @follow.destroy!
    render "api/users/show"
  end

  private

  def follow_params
    params.require(:follow).permit(:followee_id, :follower_id)
  end
end
