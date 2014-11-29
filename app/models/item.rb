class Item < ActiveRecord::Base
   validates :price, :name, presence: true
    validates :name, presence: true
    mount_uploader :photo, PhotoUploader

def self.search(search)
  if search
    search_condition = "%" + search + "%"
     where(['name LIKE ? OR username LIKE ?', search_condition, search_condition])
  else
  	all
  end
end

end
