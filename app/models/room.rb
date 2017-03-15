class Room < ApplicationRecord
  mount_uploader :picture, PictureUploader
end
