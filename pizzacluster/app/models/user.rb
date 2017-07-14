class User < ApplicationRecord
	/validates :name,:lastname,:username,:email,:password,:password_confirmation, presence: true
	validates_confirmation_of :password
	validates :email, uniqueness: true
	validates_email_format_of :email, :message => "Invalid Email!"/

end
