class Photo < ActiveRecord::Base
 	mount_uploader :image, ImageUploader
 	belongs_to :gallery
 	belongs_to :paragraph
end
