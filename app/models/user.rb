class User < ActiveRecord::Base

	validates :name,
		:presence => TRUE,
		:length => {
			:minimum => 2,
			:allow_blank => TRUE
		}


end
