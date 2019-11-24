class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true

  has_many :messages
  has_many :channels, through: :messages
  has_many :poll_sites, through: :messages
end
