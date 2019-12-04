class AddUsernameToMessages < ActiveRecord::Migration[6.0]
  def up
    add_column :messages, :username, :string
  end

  def down
    add_column :messages, :username, :string
  end
end
