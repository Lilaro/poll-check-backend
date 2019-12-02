# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PollSite.destroy_all
Channel.destroy_all
Message.destroy_all


sites = RestClient.get("https://data.cityofnewyork.us/resource/mifw-tguq.json")
sites_array = JSON.parse(sites)
                  
sites_array.each do |poll_site|
    if !!poll_site['latitude'] && !!poll_site['longitude']
   PollSite.create(
      site_name: poll_site['site_name'], 
      latitude: poll_site['latitude'], 
      longitude: poll_site['longitude'],
      site_number: poll_site['site_number'],
      street_number: poll_site['street_number'],
      street_name: poll_site['street_name'],
      city: poll_site['city'],
      borough: poll_site['borough'],
      zip_code: poll_site['zip_code'],
      community_board: poll_site['community_board'],
      council_district: poll_site['council_district'],
      voter_entrance: poll_site['voter_entrance'],
      handicap_entrance: poll_site['handicap_entrance'])
    end
   end
   
   lisa = User.create(name: "Lisa", email: "lisa@gmail.com", password: "lala")
   
   
  rides = Channel.create(name: "Rides")
  election_day = Channel.create(name: "Election Day")
  general = Channel.create(name: "General")
  
  m1 = Message.create(content: "Hi", user_id: 1, poll_site_id: 1, channel_id: 3)
  m2 = Message.create(content: "Hi Poll Site 1, Channel 3", user_id: 1, poll_site_id: 1, channel_id: 3)
  m3 = Message.create(content: "Hey Poll Site 1, Channel 3", user_id: 2, poll_site_id: 1, channel_id: 3)
  m4 = Message.create(content: "Hello Poll Site 1, Channel 3", user_id: 3, poll_site_id: 1, channel_id: 3)
  m5 = Message.create(content: "Oh hey Site 2 Channel 2", user_id: 1, poll_site_id: 2, channel_id: 3)
  
#   site1 = PollSite.create(
#    id: 8001,
#    site_name: "PS 64 Pura Belpre",
#    site_number: "X0035",
#    created_at: "2019-11-30T18:30:23.477Z",
#    updated_at: "2019-11-30T18:30:23.477Z",
#    street_number: "1425.",
#    street_name: "Walton Avenue",
#    borough: "",
#    zip_code: "10452",
#    community_board: "",
#    council_district: "",
#    handicap_entrance: "1425 Walton Avenue",
#    latitude: "40.840127",
#    longitude: "-73.915643",
#    city: "Bronx",
#    voter_entrance: "1425 Walton Avenue"
#   )

#   site2 = PollSite.create(
#    id: 8002,
#    site_name: "JHS 56",
#    site_number: "11592",
#    created_at: "2019-11-30T18:30:23.488Z",
#    updated_at: "2019-11-30T18:30:23.488Z",
#    street_number: "220",
#    street_name: "Henry Street",
#    borough: "MANHATTAN",
#    zip_code: "10002",
#    community_board: "3",
#    council_district: "1",
#    handicap_entrance: "Montgormey Street (NASA Space Double Doors)",
#    latitude: "40.713486",
#    longitude: "-73.986173",
#    city: "New York",
#    voter_entrance: "220 Henry Street"
#   )

#   site3 = PollSite.create(
#    id: 8003,
#    site_name: "The River School/PS 281",
#    site_number: "11485",
#    created_at: "2019-11-30T18:30:23.494Z",
#    updated_at: "2019-11-30T18:30:23.494Z",
#    street_number: "425",
#    street_name: "East 35 Street",
#    borough: "MANHATTAN",
#    zip_code: "10016",
#    community_board: "6",
#    council_district: "4",
#    handicap_entrance: "425 East 35 Street",
#    latitude: "40.744514",
#    longitude: "-73.972388",
#    city: "New York",
#    voter_entrance: "425 East 35 Street"
#   )

#   site4 = PollSite.create(
#    id: 8006,
#    site_name: "High School for Construction Trades",
#    site_number: "11597",
#    created_at: "2019-11-30T18:30:23.509Z",
#    updated_at: "2019-11-30T18:30:23.509Z",
#    street_number: "94-06",
#    street_name: "104 Street",
#    borough: "QUEENS",
#    zip_code: "11416",
#    community_board: "9",
#    council_district: "28",
#    handicap_entrance: "94-06 104 Street",
#    latitude: "40.689249",
#    longitude: "-73.840996",
#    city: "Ozone Park",
#    voter_entrance: "94-06 104 Street"
#   )

  puts 'SEEDED 🌱'
  