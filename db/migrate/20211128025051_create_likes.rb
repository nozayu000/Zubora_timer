class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :timer_id
      t.integer :like_quantity

      t.timestamps
    end
  end
end
