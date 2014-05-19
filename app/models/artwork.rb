class Artwork < ActiveRecord::Base
  belongs_to_many :curators, through: :collections
  belongs_to :artist
end
