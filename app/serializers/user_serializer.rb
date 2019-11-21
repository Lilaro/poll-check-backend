class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email

  has_many :messages
  has_many :poll_sites, through: :messages
  has_many :channels, through: :messages
end
