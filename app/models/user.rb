class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 30 }
  validates :nickname, presence: true
  validates :image, presence: true
  validates :birthday, presence: true,length: { is: 8 }
  validates :email, presence: true, length: { maximum: 255 },
                  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, on: :create
end
