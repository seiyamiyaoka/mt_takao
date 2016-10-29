class CreateReculutements < ActiveRecord::Migration
  def change
    create_table :reculutements do |t|
      t.references :participation
      t.references :promise
      t.boolean :result

      t.timestamps null: false
    end
  end
end
