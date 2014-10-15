class Accountl < ActiveRecord::Base
	validates :_id, :password, :email, presence: true
	validates_uniqueness_of :_id
	#validates_format_of     :email, :with=> [a-z]+
end
