class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :user_id,       null: false
      t.integer :stock_id,      null: false

      t.timestamps
    end
  end
end
