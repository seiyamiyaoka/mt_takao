class CreatePromises < ActiveRecord::Migration
  def change
    create_table :promises do |t|
      t.datetime :promise_time
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
