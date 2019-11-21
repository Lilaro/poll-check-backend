class Message < ApplicationRecord
    belongs_to :user
    belongs_to :channel
    belongs_to :poll_site
end
