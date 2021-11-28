class AddWorkoutAmountsToRankings < ActiveRecord::Migration[5.2]
  def change
    add_column :rankings, :workout_amounts, :integer
  end
end
