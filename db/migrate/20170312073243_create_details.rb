class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.integer :restaurant_id
      t.integer :user_id
      t.text :body

      t.timestamps null: false
    end
  end
end
