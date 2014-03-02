class User < ActiveRecord::Base
	has_secure_password
	validates :email, uniqueness: true, presence: :true
	validates :name, presence: :true

	before_save { |user| user.email = email.downcase }
	before_save :create_remember_token





	private
	def create_remember_token
		# self is used here to refer to this model. The User being saved to DB
		self.remember_token = SecureRandom.urlsafe_base64
	end


end

