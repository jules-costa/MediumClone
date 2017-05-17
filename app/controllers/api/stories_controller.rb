class Api::StoriesController < ApplicationController

  def create
    @story = Story.new(story_params)
    @story.read_time = read_time(@story)
    @story.author.name = current_user.username
    @story.author.image_url = current_user.image_url
    @story.author.biography = current_user.biography
    if @story.save
      # change to stories show page
      render 'api/stories/'
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
      # change to stories show page
      render 'api/stories/'
      #create stories index jbuilder
    else
      render json: @story.errors.full_messages, status: 422
    end
  end

  def destroy
    @story = Story.fin(params[:id])
    @story.destroy
    render 'api/stories'
  end

  def show
    @story = Story.find(params[:id])

    #create stories show jbuilder
  end

  def index
    @stories = Story.all
    #create stories index jbuilder
    # if topic_id comes through with ajax payload, filter by topic
  end

  private

  def story_params
    params.require(:story).permit(:title, :body, :image_url)
  end

  def read_time(story)
    words = story.body.split(" ")
    "#{words / 200} minutes"
  end
end
