module StaticPagesHelper
	require 'httparty'

	def search_api()		
		url = "http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{@artist}&api_key=#{ENV['API_KEY']}&format=json"
		response = HTTParty.get(url)
		artist_info = JSON.parse(response.body)
	end

end
