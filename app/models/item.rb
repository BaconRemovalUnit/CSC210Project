class Item < ActiveRecord::Base
    validates :name, presence: true
    mount_uploader :photo, PhotoUploader
end
