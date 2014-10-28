class Item < ActiveRecord::Base
    validates :name, :username, :price, presence: true
  
end
