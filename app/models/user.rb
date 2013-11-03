class User < ActiveRecord::Base

  has_secure_password
	validates :name,
		:presence => TRUE,
		:length => {
			:minimum => 2,
			:allow_blank => TRUE
		}


		def self.validate_login(name, password)
			user = User.find_by_name(name)

			if user && user.password == user && secure_password
				user
			else
				nil
			end
		end
		


end
