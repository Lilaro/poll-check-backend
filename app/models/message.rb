class Message < ApplicationRecord
    belongs_to :user
    belongs_to :channel
    belongs_to :poll_site

    # def user_name
    #     begin
    #         return self.user.name
    #         raise 'error'
    #     rescue
    #         return self.content
    #     end
    # end
end
