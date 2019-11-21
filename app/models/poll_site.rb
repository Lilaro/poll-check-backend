class PollSite < ApplicationRecord
    has_many :messages
    has_many :channels, through: :messages
    has_many :users, through: :messages
end
