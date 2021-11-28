class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :commenter_id
      t.integer :commented_id
      t.text :comment_contents
      t.date :date
      t.integer :workout_amounts
      t.integer :ranking_type

      t.timestamps
    end
  end
end
