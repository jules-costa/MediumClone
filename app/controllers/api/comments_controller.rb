class Api::CommentsController < ApplicationController
  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(comment_params)
      @story = @comment.story
      render "/api/stories/show"
    else
      render json: @comment.errors.full_messages, status: 422
    end
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      @story = @comment.story
      render "/api/stories/show"
    else
      render json: @comment.errors.full_messages, status: 422
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @story = @comment.story
    @comment.destroy!
    render "api/stories/show"
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :story_id, :author_id)
  end
end
