class Api::TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      render "api/stories/index"
    else
      render json: @topic.errors.full_messages, status: 422
    end
  end

  def show
    @topic = Topic.find_by(title: params["title"])
  end

  private

  def topic_params
    params.require(:topic).permit(:title)
  end
end
