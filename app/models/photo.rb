class Photo < ApplicationRecord
  belongs_to :room
  mount_uploader :url, PictureUploader

end
