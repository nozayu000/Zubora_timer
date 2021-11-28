class CreateRankings < ActiveRecord::Migration[5.2]
  def change
    create_table :rankings do |t|
      t.integer :user_id
      t.integer :timer_id
      t.integer :workout_daily
      t.integer :workout_weekly
      t.integer :workout_age
      t.integer :workout_amount

      t.timestamps
    end
  end
end
