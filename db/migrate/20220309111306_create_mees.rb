class CreateMees < ActiveRecord::Migration[6.0]
  def change
    create_table :mees do |t|
      t.text :text, null: false
      t.integer :user_id,       null: false
      t.integer :stock_id,      null: false
      t.time :published_at, null: false

      t.timestamps
    end
  end
end
