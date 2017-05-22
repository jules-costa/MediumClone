class Story < ApplicationRecord
  validates :title, :body, :description, :size, :author_id, :image_url, :read_time, :topic_id, presence: true
  validates :title, uniqueness: true

  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: "User"

  has_many :comments,
    primary_key: :id,
    foreign_key: :story_id,
    class_name: "Comment"

end
