class Photo < ApplicationRecord
  belongs_to :room
  validates :title, presence: true
  mount_uploader :picture, PictureUploader
  validates :picture, presence: true	
end
