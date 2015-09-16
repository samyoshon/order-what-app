class User < ActiveRecord::Base
	has_many :comments 
	has_many :menus

	has_secure_password
	before_save { self.email = email.downcase }
end
