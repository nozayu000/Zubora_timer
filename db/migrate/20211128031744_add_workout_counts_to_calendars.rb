class AddWorkoutCountsToCalendars < ActiveRecord::Migration[5.2]
  def change
    add_column :calendars, :workout_counts, :integer
  end
end
