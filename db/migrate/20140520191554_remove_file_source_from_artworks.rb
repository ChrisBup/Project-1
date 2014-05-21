class RemoveFileSourceFromArtworks < ActiveRecord::Migration
  def change
    remove_column :artworks, :file_source, :string
  end
end
