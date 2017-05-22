class Api::StoriesController < ApplicationController

  def create
    @story = Story.new(story_params)
    @story.read_time = read_time(@story)
    @story.topic_id = 1
    if @story.save
      render :show
    else
      render json: @story.errors.full_messages, status: 422
    end
  end

  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    if @story.update_attributes(story_params)
      render :show
    else
      render json: @story.errors.full_messages, status: 422
    end
  end

  def destroy
    @story = Story.find(params[:id])
  end

  def show
    @story = Story.find(params[:id])
  end

  def index
    if params["topicId"]
      @stories = Story.where(topic_id: params["topicId"])
    else
      @stories = Story.all
    end
  end

  private

  def story_params
    params.require(:story).permit(:title, :body, :description, :image_url, :author_id)
  end

  def read_time(story)
    wordcount = story.body.split(" ").length
    "#{(wordcount / 200.0).ceil + 2} min read"
  end
end
