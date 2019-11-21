class ChangeLatitudeToBeStringInPollSites < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column :poll_sites, :latitude, :string
    end
  
    def down
      change_column :poll_sites, :latitude, :string
    end
  end
end
