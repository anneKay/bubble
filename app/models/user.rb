class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true, presence: true
  validates :user_name, uniqueness: true, presence: true
end
