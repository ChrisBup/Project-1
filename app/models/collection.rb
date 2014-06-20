class Collection < ActiveRecord::Base
  belongs_to :curator
  has_and_belongs_to_many :artworks
end
