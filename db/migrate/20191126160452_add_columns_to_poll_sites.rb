class AddColumnsToPollSites < ActiveRecord::Migration[6.0]
  def up
    add_column :poll_sites, :city, :string
    add_column :poll_sites, :voter_entrance, :string
  end

  def up
    add_column :poll_sites, :city, :string
    add_column :poll_sites, :voter_entrance, :string
  end

end
