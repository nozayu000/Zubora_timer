class CreateCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
      t.integer :user_id
      t.integer :timer_id
      t.integer :like_id
      t.integer :comment_id
      t.boolean :workout
      t.datetime :created_at

      t.timestamps
    end
  end
end
