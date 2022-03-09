class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :name, null: false
      t.integer :user_id
      t.timestamps
    end
  end
end
