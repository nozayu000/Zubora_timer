class AddFollowedIdToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :followed_id, :integer
  end
end
