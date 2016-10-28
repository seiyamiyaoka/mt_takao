class CreateReculutements < ActiveRecord::Migration
  def change
    create_table :reculutements do |t|
      t.references :participation_user
      t.references :subscription_user
      t.references :promise

      t.timestamps null: false
    end
  end
end
