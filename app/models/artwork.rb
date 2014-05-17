class Artwork < ActiveRecord::Base
  has_many :curators, through: :collections
  belongs_to :artist
end
