class Topic < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  has_many :stories,
    primary_key: :id,
    foreign_key: :topic_id,
    class_name: "Story"
end
