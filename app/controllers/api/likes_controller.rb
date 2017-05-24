class Api::LikesController < ApplicationController
  def create
    @like = Like.new(like_params)
    @like.user_id = current_user.id
    @story = @like.story
    if @like.save
      render "api/stories/show"
    else
      render json: @like.errors.full_messages, status: 422
    end
  end

  def destroy
    @like = Like.find_by(story_id: params[:id], user_id: current_user.id)
    @story = @like.story
    @like.destroy!
    render "api/stories/show"
  end

  private

  def like_params
    params.require(:like).permit(:disciple_id, :story_id)
  end
end
