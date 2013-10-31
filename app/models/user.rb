class User < ActiveRecord::Base

  has_secure_password
	validates :name,
		:presence => TRUE,
		:length => {
			:minimum => 2,
			:allow_blank => TRUE
		}


end
