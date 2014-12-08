class User < ActiveRecord::Base
    validates :_id, :password, :email, presence: true
    validates_uniqueness_of :_id
    validates_uniqueness_of :email
    
  def self.search(id)
    if id
      id_condition = "%" + search + "%"
        where(['id LIKE ?', search_condition])
    else
      all
    end
  end
    
end
