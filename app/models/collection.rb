class Collection < ActiveRecord::Base
  t.references :curator
  t.references :artwork
  t.string :name
end
