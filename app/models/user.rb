class User < ActiveRecord::Base
  include BCrypt

  has_secure_password

  has_many :tasks, dependent: :destroy

  validates :password, presence: {on: :create}
  validates :email, presence: true, email: true, uniqueness: true

  def to_s
    email
  end
end
