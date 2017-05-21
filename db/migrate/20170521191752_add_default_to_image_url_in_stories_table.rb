class AddDefaultToImageUrlInStoriesTable < ActiveRecord::Migration[5.0]
  def change
    change_column_default :stories, :image_url, "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_568/v1495394471/A2BA8A2AFE2CA6634FEDF42475D479D0_20130103_120349_UTC_tz6jwc.jpg"
  end
end
