class Post < ApplicationRecord
  validates :user_id, presence: true
  validates :timer_id, presence: true
end
