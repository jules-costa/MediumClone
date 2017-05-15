class User < ApplicationRecord
  validates :username, :email, :session_token, :password_digest, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  before_validation :ensure_session_token

  attr_reader :password

  
end
