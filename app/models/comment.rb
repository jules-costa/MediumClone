class Comment < ApplicationRecord
  validates :story_id, :author_id, :body, presence: true

  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    classname: "User"

  belongs_to :story,
    primary_key: :id,
    foreign_key: :story_id,
    classname: "Story"

end
