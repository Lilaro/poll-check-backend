class ChangeLatitudeToBeStringAgainInPollSites < ActiveRecord::Migration[6.0]
  def up
    remove_column :poll_sites, :latitude
    remove_column :poll_sites, :longitude
  end

  def down
    add_column :poll_sites, :latitude, :string
    add_column :poll_sites, :longitude, :string
  end
end
