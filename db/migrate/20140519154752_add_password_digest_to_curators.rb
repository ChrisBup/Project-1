class AddPasswordDigestToCurators < ActiveRecord::Migration
  def change
    add_column :curators, :password_digest, :string
  end
end
