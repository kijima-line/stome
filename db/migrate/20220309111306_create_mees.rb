class CreateMees < ActiveRecord::Migration[6.0]
  def change
    create_table :mees do |t|
      t.text :text
      t.integer :user_id
      t.integer :stock_id

      t.timestamps
    end
  end
end
