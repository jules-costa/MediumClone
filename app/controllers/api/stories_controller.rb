class Api::StoriesController < ApplicationController

  def create
    @story = Story.new(story_params)
    @story.read_time = read_time(@story)
    # change author id to be current user's id
    @story.author_id = 1
    @story.topic_id = 1
    # change to default url in schema
    @story.image_url = "http://www.vnutz.com/attachments/20130103/A2BA8A2AFE2CA6634FEDF42475D479D0_20130103_120349_UTC"
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
      # render "api/stories/#{@story.id}"
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
    params.require(:story).permit(:title, :body, :image_url)
  end

  def read_time(story)
    wordcount = story.body.split(" ").length
    "#{(wordcount / 200.0).ceil + 2} min read"
  end
end
