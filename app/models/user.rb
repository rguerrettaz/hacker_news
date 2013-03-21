class User < ActiveRecord::Base
	include BCrypt

	validates :email, :uniqueness => true
  validates :name, :presence => true

  has_many :posts
  has_many :comments

  def password
  	@password ||= Password.new(password_hash)
  end

  def password=(new_password)
  	self.password_hash = Password.create(new_password)
  end
end
