class RemoveIdFromArtworks < ActiveRecord::Migration
  def change
    remove_column :artworks, :id, :integer
  end
end
