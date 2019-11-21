class ChangeSiteNumberToBeStringInPollSites < ActiveRecord::Migration[6.0]

  def up
    change_column :poll_sites, :site_number, :string
  end

  def down
    change_column :poll_sites, :site_number, :string
  end
end
