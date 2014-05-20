class Curator < ActiveRecord::Base
  has_many :artworks, through: :collections
  has_many :collections
  has_secure_password
end
