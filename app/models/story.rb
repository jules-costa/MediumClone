class Story < ApplicationRecord
  validates :title, :body, :author_id, :image_url, :read_time, :topic_id, presence: true
  validates :title, uniqueness: true
end
