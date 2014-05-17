class CreateCurators < ActiveRecord::Migration
  def change
    create_table :curators do |t|
      t.string :username

      t.timestamps
    end
  end
end
