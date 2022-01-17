class AddPostIdToTimer < ActiveRecord::Migration[5.2]
  def change
    add_column :timers, :post_id, :integer
  end
end
