class AddWorkoutGenerationToRankings < ActiveRecord::Migration[5.2]
  def change
    add_column :rankings, :workout_generation, :integer
  end
end
