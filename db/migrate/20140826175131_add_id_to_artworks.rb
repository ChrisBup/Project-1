class AddIdToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :id, :primary_key
  end
end
