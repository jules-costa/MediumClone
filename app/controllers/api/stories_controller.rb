class Api::StoriesController < ApplicationController

  def create
    @story = Story.new(story_params)
    @story.read_time = read_time(@story)
    @story.topic_id = Topic.where(title: "yes").pluck(:id).first
    if @story.image_url == ""
      @story.image_url = "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_568/v1495394471/A2BA8A2AFE2CA6634FEDF42475D479D0_20130103_120349_UTC_tz6jwc.jpg"
    end
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
    if params["commentId"]
      @comment = Comment.where(id: params["commentId"])
      @story = Story.find(params[:id])
      @comment.destroy!
      render :show
    else
      @story = Story.find(params[:id])
      @story.destroy!
      render :show
    end
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
    params.require(:story).permit(:title, :body, :description, :image_url, :author_id, :topic_id)
  end

  def read_time(story)
    wordcount = story.body.split(" ").length
    "#{(wordcount / 200.0).ceil + 2} min read"
  end
end
