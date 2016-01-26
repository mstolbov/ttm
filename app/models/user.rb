class User < ActiveRecord::Base
  include BCrypt

  has_secure_password

  validates :password, presence: {on: :create}
  validates :email, presence: true, email: true, uniqueness: true
end
