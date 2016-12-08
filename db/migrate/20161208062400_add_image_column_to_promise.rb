class AddImageColumnToPromise < ActiveRecord::Migration
  def change
    add_column :promises, :image, :string
  end
end
