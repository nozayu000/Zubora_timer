class AddRestSecondsToTimers < ActiveRecord::Migration[5.2]
  def change
    add_column :timers, :rest_seconds, :integer
  end
end
