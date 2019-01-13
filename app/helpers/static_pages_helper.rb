module StaticPagesHelper
	require 'httparty'

	def search_api()		
		url = "https://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{@artist}&api_key=#{ENV['API_KEY']}&format=json"
		response = HTTParty.get(url)
		artist_info = JSON.parse(response.body)
	end

	def search_songs()
		url = "https://ws.audioscrobbler.com/2.0/?method=artist.gettoptracks&artist=#{@artist}&limit=10&api_key=#{ENV['API_KEY']}&format=json"
		response = HTTParty.get(url)
		popular_songs = JSON.parse(response.body)
	end
end
