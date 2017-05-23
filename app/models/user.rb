class User < ApplicationRecord
  validates :username, :session_token, :password_digest, presence: true
  validates :username, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  before_validation :ensure_session_token

  attr_reader :password

  has_many :stories,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: "Story"

  has_many :comments,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: "Comment"

  has_many :following_disciples,
    primary_key: :id,
    foreign_key: :guru_id,
    class_name: "Follow"

  has_many :followed_gurus,
    primary_key: :id,
    foreign_key: :disciple_id,
    class_name: "Follow"

  has_many :disciples,
    through: :following_disciples,
    source: :disciple

  has_many :gurus,
    through: :followed_gurus,
    source: :guru


  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    user && user.is_password?(password) ? user : nil
  end

  def follows?(user)
    self.gurus.include?(user)
  end

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
    @password = password
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
    self.save
    self.session_token
  end
end
