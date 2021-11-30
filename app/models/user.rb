class User < ApplicationRecord
  has_secure_password
  validates :fullname, :email, :password_digest, presence: true
  validates :email, uniqueness: true
  validates :displayname, length: { minimum: 2 }
  validates :displayname, length: { maximum: 32 }
  validates :password_digest, length: { minimum: 6 }
end
