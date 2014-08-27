class RemoveCaptionFromArtworks < ActiveRecord::Migration
  def change
    remove_column :artworks, :caption, :string
  end
end
