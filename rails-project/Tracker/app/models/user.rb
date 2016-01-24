class User < ActiveRecord::Base

	has_many :tracks
	validates :username, presence: true
	validates :email , presence: true, uniqueness: true


	def password
		@password = BCrypt::Password.new(hashed_password)
	end

	def password=(new_password)
		@password = BCrypt::Password.create(new_password)
		self.hashed_password = @password
	end

	def self.authenticate(entered_email, input_password)
		@user = User.find_by(email: entered_email)
		if @user && @user.password == input_password
			return @user
		else
			return nil
		end
	end

end