class Timer < ApplicationRecord
  belongs_to :user
  # １０００桁は設定していないため最大９９９に設定
  validates :work_seconds, :numericality => { :less_than_or_equal_to => 999 }
  validates :rest_seconds, :numericality => {
              :greater_than_or_equal_to => 1,
              :less_than_or_equal_to => 999,
              :message => '入力値が1~999の範囲外です'
           }
  validates :set_time, presence: true
end
