class AddArtistNameToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :artist_name, :string
  end
end
