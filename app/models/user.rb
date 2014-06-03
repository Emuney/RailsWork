class User < ActiveRecord::Base
	before_save { self.email = email.downcase }

	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-+\.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, :presence => {:message => " can't be blank." }, 
		format: { with: VALID_EMAIL_REGEX }, 
		:uniqueness => {:message => " already exists in our system."}
	has_secure_password	
	validates :password, length: { minimum: 6 }
	has_many :microposts
end