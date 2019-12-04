class PollSite < ApplicationRecord
    has_many :messages
    has_many :channels, through: :messages
    has_many :users, through: :messages

    def user_name
        begin
            return self.message.user.name
            raise 'error'
        rescue
            return self.id
        end
    end
end
