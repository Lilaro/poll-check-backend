class MessageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :content, :users, :username
  belongs_to :user
  belongs_to :channel
  belongs_to :poll_site
end
