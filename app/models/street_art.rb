class StreetArt < ApplicationRecord
  has_many :likes

  mount_uploader :image, ImageUploader
end
