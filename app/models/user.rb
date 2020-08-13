class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 20 }
  validates :nickname, presence: true, length: { maximum: 20}
  validates :image, presence: true
  validates :birthday, presence: true
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, on: :create
end
