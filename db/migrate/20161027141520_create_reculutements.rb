class CreateReculutements < ActiveRecord::Migration
  def change
    create_table :reculutements do |t|
      t.references :user
      t.references :promise
      t.string :content
      t.boolean :result

      t.timestamps null: false
    end
  end
end
