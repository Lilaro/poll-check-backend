class PollSiteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :site_name, :latitude, :longitude, :site_number, :street_number, :street_name,
    :borough, :zip_code, :community_board, :council_district, :handicap_entrance, :city, :voter_entrance, :messages
    
  has_many :messages
  has_many :users, through: :messages
  has_many :channels, through: messages
end
