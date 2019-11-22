class ChangeChannelTypeToName < ActiveRecord::Migration[6.0]
  def up
    rename_column :channels, :type, :name
  end

  def down
    rename_column :channels, :type, :name
  end
end
