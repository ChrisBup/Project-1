class RemoveSeriesFromArtworks < ActiveRecord::Migration
  def change
    remove_column :artworks, :series, :string
  end
end
