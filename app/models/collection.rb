class Collection < ActiveRecord::Base
  belongs_to :curator
  has_many :artworks
end
