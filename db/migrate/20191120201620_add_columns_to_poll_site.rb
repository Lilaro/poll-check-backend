class AddColumnsToPollSite < ActiveRecord::Migration[6.0]
  def change
    add_column :poll_sites, :latitude, :string
    add_column :poll_sites, :longitude, :string
  end
end
