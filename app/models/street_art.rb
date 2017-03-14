class StreetArt < ApplicationRecord
  has_many :likes
  belongs_to :user

  mount_uploader :image, ImageUploader
end
