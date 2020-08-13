class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 20 }
  validates :nickname, presence: true, length: { maximum: 20}
  validates :birthday, presence: true
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, on: :create

  mount_uploader :image, ImageUploader
end
