class Follow < ApplicationRecord
  validates :disciple_id, :guru_id, presence: true

  belongs_to :disciple,
    primary_key: :id,
    foreign_key: :disciple_id,
    class_name: "User"

  belongs_to :guru,
    primary_key: :id,
    foreign_key: :guru_id,
    class_name: "User"
end
