class User < ActiveRecord::Base
  has_many :songs

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
