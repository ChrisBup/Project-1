class AddArtistNationalityToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :artist_nationality, :string
  end
end
