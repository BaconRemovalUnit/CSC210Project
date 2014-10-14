class Accountl < ActiveRecord::Base
	validates :_id, :password, :email, presence: true
end
