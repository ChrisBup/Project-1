class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :dates
      t.string :nationality

      t.timestamps
    end
  end
end
