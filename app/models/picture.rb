class Picture < ApplicationRecord
  belongs_to :user
  mount_uploader :post_image, PostImageUploader

  validates :post_image, presence: true
  validates :content, presence: true, length: { in: 1..140 }
end
