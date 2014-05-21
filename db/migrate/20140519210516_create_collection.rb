class CreateCollection < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.references :curator
      t.references :artwork
      t.string :name
    end
  end
end
