class CreatePollSites < ActiveRecord::Migration[6.0]
  def change
    create_table :poll_sites do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :site_number

      t.timestamps
    end
  end
end
