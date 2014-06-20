class Curator < ActiveRecord::Base
  has_many :collections
  has_many :artworks, through: :collections
  has_secure_password

  validates :username, presence: true
  validates :password, length: {within: 5..15, wrong_length: "password needs to be between 5 and 15 characters"}
  validates :terms_of_service, acceptance: true

end
