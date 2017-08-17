namespace :theaters do
  desc 'updates the seeds'
  task import: :environment do
    require 'faraday'
    require 'csv'

    endpoint = 'https://raw.githubusercontent.com/coryjb/moviepass/master/theaters.csv'
    response = Faraday.get(endpoint)

    CSV.parse(response.body, headers: true) do |row|
      theater = row.to_h

      Theater.find_or_initialize_by(githubid: theater['id']).update_attributes!(
          name: theater['name'],
          address: theater['address'],
          city: theater['city'],
          state: theater['state'],
          zip: theater['zip'],
          distance: theater['distance'],
          lon: theater['lon'],
          lat: theater['lat'],
          theaterChainName: theater['theaterChainName'],
          ticketType: theater['ticketType'] 
      )
    end
  end
end
