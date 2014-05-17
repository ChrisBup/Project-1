class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :image_url
      t.string :caption
      t.string :file_source
      t.string :series

      t.timestamps
    end
  end
end
