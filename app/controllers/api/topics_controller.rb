class Api::TopicsController < ApplicationController
  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      render "api/stories/index"
    else
      render json: @topic.errors.full_messages, status: 422
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:title)
  end
end
