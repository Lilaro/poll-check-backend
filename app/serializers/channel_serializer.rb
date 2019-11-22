class ChannelSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
  has_many :messages
  has_many :users, through: :messages
  has_many :poll_sites, through: :messages
end
