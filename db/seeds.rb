# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sites = RestClient.get("https://data.cityofnewyork.us/resource/mifw-tguq.json")
sitesarray = JSON.parse(sites)

sitesarray.each do |poll_site|
   PollSite.create(
      site_name: poll_site['site_name'], 
      latitude: poll_site['latitude'], 
      longitude: poll_site['longtitude'],
      site_number: poll_site['site_number'],
      street_number: poll_site['street_number'],
      street_name: poll_site['street_name'],
      borough: poll_site['borough'],
      zip_code: poll_site['zipcode'],
      community_board: poll_site['community_board'],
      council_district: poll_site['council_district'],
      handicap_entrance: poll_site['handicap_entrance'])
  end

  lisa = User.create(name: "Lisa", email: "larochelle.lisa@gmail.com", password: "lala")


  rides = Channel.create(name: "Rides")
  election_day = Channel.create(name: "Election Day")
  general = Channel.create(name: "General")

  mp1c1 = Message.create(content: "Hi", user_id: 1, poll_site_id: 1, channel_id: 1)
  mp2cs = Message.create(content: "Hi Poll Site 2, Channel 2", user_id: 1, poll_site_id: 2, channel_id: 2)
  mp3c2 = Message.create(content: "Hi Poll Site 3, Channel 2", user_id: 1, poll_site_id: 3, channel_id: 2)
  mp1c3 = Message.create(content: "Hi Poll Site 2, Channel 2", user_id: 1, poll_site_id: 1, channel_id: 3)


  puts 'SEEDED 🌱'