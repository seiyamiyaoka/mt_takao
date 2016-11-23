class AddTitleToPromise < ActiveRecord::Migration
  def change
    add_column :promises, :title, :string
    add_column :promises, :content, :text
    add_column :promises, :limit_time, :datetime
  end
end
