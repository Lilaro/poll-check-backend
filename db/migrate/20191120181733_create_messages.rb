class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.integer :user_id
      t.integer :poll_site_id
      t.integer :channel_id

      t.timestamps
    end
  end
end
