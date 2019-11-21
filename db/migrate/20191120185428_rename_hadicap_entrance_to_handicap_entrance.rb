class RenameHadicapEntranceToHandicapEntrance < ActiveRecord::Migration[6.0]
  def change
    rename_column :poll_sites, :hadicap_entrance, :handicap_entrance
  end
end
