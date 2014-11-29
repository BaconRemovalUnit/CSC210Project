class Item < ActiveRecord::Base
   validates :price, :name, presence: true
    validates :name, presence: true
    mount_uploader :photo, PhotoUploader
end
