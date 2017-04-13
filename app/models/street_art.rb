class StreetArt < ApplicationRecord
  has_many :likes, dependent: :destroy
  belongs_to :user

  validates :address, presence: true

  mount_uploader :image, ImageUploader
  geocoded_by :address
  after_validation :geocode
end
