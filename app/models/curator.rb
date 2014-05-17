class Curator < ActiveRecord::Base
  has_many :artworks, through: :collections
end
