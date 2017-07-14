class User < ApplicationRecord
	resouces :users
	validates_confirmation_of :password
	validates :all, presence: true
	validates :email, uniqueness: true
end
