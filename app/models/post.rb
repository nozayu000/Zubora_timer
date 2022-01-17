class Post < ApplicationRecord
  validates :user_id, presence: true
  validates :timer_id, presence: true
  
  belongs_to :user
  has_many :comments
end
