class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: {
    with: URI::MailTo::EMAIL_REGEXP,
    message: "Please enter a valid email"
  }
end
