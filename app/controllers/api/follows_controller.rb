class Api::FollowsController < ApplicationController
  def create
    @follow = Follow.new(follow_params)
    @follow.disciple_id = current_user.id
    @user = @follow.guru
    if @follow.save
      render "api/users/show"
    else
      render json: @follow.errors.full_messages, status: 422
    end
  end

  def destroy
    @follow = Follow.find_by(guru_id: params[:id], disciple_id: current_user.id)
    @user = @follow.guru
    @follow.destroy!
    render "api/users/show"
  end

  private

  def follow_params
    params.require(:follow).permit(:disciple_id, :guru_id)
  end
end
