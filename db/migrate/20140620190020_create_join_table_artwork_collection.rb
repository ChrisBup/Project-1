class CreateJoinTableArtworkCollection < ActiveRecord::Migration
  def change
    create_join_table :artworks, :collections do |t|
      t.index [:artwork_id, :collection_id]
      t.index [:collection_id, :artwork_id]
    end
  end
end
