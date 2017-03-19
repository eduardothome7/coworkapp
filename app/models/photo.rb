class Photo < ApplicationRecord
  belongs_to :room
  mount_uploader :url, PictureUploader
  has_attached_file :url, :styles => {:thumb => '50x50', :medium => '100x100'}
  crop_attached_file :url

end
