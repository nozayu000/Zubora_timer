class AddFollowIdToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :follow_id, :intger
  end
end
