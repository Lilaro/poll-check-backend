class RenamePollSiteNameToSiteName < ActiveRecord::Migration[6.0]
  def change
    rename_column :poll_sites, :name, :site_name
  end
end
