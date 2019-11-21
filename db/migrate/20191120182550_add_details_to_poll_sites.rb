class AddDetailsToPollSites < ActiveRecord::Migration[6.0]
  def change
    add_column :poll_sites, :street_number, :string
    add_column :poll_sites, :street_name, :string
    add_column :poll_sites, :borough, :string
    add_column :poll_sites, :zip_code, :string
    add_column :poll_sites, :community_board, :string
    add_column :poll_sites, :council_district, :string
    add_column :poll_sites, :hadicap_entrance, :string
  end
end
