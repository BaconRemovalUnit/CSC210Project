class User < ActiveRecord::Base
    validates :_id, :password, :email, presence: true
    validates_uniqueness_of :_id
    validates_uniqueness_of :email
end
