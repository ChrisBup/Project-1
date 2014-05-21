class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.integer :artwork_id
      t.integer :curator_id
      t.string :name
    end
  end
end
