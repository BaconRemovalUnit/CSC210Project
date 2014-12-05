class Item < ActiveRecord::Base
   validates :price, :name, presence: true
    validates :name, presence: true
    mount_uploader :photo, PhotoUploader

def self.search(search, commit)
  if search
    search_condition = "%" + search + "%"
    @search_method = commit == "Search by item name"
    if @search_method
      where(['name LIKE ?', search_condition])
     else
       where(['username LIKE ?', search_condition])
     end
  else
  	all
  end
end

end
