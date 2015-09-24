class User < ActiveRecord::Base
  has_many :library_users
  has_many :libraries, through: :library_users

	has_secure_password

	validates :first_name, :last_name, :email, :password, presence: true
	validates :password, length: {minimum: 5}

  def self.confirm(params)
    user = User.find_by_email(params[:email])
    user.try(:authenticate, params[:password])
  end

end
