class AddFieldsToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :title, :string
    add_column :artworks, :label, :text
    add_column :artworks, :description, :text
    add_column :artworks, :medium, :string
    add_column :artworks, :object_date, :string
    add_column :artworks, :bk_uri, :string
    add_column :artworks, :bk_collection, :string
  end
end
