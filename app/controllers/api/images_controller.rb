class Api::ImagesController < ApplicationController
  def index
    cloud_name = ENV['CLOUD_NAME']
    upload_preset = Figaro.env.UPLOAD_PRESET
    @images = Image.all
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      render :show
    end
  end

  private

  def image_params
    params.require(:image).permit(:url)
  end

end
