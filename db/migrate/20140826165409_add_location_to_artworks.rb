class AddLocationToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :location, :string
  end
end
