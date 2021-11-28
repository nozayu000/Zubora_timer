class CreateTimers < ActiveRecord::Migration[5.2]
  def change
    create_table :timers do |t|
      t.integer :user_id
      t.integer :second_work
      t.integer :second_rest
      t.integer :set_time
      t.integer :amount

      t.timestamps
    end
  end
end
