class AddImageColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image, :string
    add_column :users, :one_thing, :string
  end
end
