class AddWorkSecondsToTimers < ActiveRecord::Migration[5.2]
  def change
    add_column :timers, :work_seconds, :integer
  end
end
