class Follow < ApplicationRecord
  validates :disciple_id, :guru_id, presence: true
  validates :disciple_id, uniqueness: { scope: :guru_id }
  validate :no_self_follows

  def no_self_follows
    errors.add(:guru_id, "can't follow one's self") if self.guru_id == self.disciple_id
  end

  belongs_to :disciple,
    primary_key: :id,
    foreign_key: :disciple_id,
    class_name: "User"

  belongs_to :guru,
    primary_key: :id,
    foreign_key: :guru_id,
    class_name: "User"
end
