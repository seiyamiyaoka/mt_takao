class AddOmniauthColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uid, :string, null: false, default: ""
    add_column :users, :provider, :string, null: false, default: ""
    add_column :users, :image_url, :string
    add_column :users, :gender, :string
    add_column :users, :birthday, :date
    rename_column :users, :one_thing, :self_introduction

    add_index :users, [:uid, :provider]
  end
end
