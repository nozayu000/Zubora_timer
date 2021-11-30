class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:twitter]

  has_many :sns_credentials

# クラスメソッドを定義する
 def self.from_omniauth(auth)
  # 定義できたら「binding.pry」を記述しSNSから情報を取得できるか確認してみましょう
  binding.pry
 end

end