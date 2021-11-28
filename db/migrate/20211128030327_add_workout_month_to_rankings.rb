class AddWorkoutMonthToRankings < ActiveRecord::Migration[5.2]
  def change
    add_column :rankings, :workout_month, :integer
  end
end
