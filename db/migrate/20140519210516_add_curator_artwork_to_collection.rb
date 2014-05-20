class AddCuratorArtworkToCollection < ActiveRecord::Migration
  def change
    add_column :collections, :curators, :artworks do |t|
      t.references :curator
      t.references :artwork
      t.string :name
    end
  end
end
