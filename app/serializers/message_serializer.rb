class MessageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content
  belongs_to :user
  belongs_to :channel
  belongs_to :poll_site
end
