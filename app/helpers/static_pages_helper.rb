module StaticPagesHelper
	require 'httparty'

	def search_api		
		url = "https://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{@artist}&api_key=#{ENV['API_KEY']}&format=json"
		response = HTTParty.get(url)
		artist_info = JSON.parse(response.body)
	end

	def search_songs
		url = "https://ws.audioscrobbler.com/2.0/?method=artist.gettoptracks&artist=#{@artist}&limit=10&api_key=#{ENV['API_KEY']}&format=json"
		response = HTTParty.get(url)
		popular_songs = JSON.parse(response.body)
	end

	def search_albums
		url = url = "https://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=#{@artist}&limit=10&api_key=#{ENV['API_KEY']}&format=json"
		response = HTTParty.get(url)
		popular_albums = JSON.parse(response.body)
	end

	def insert_artist
		user_logged_in = current_user
		if !History.find_by(artist: @artist.downcase)
			History.create(artist: @artist.downcase)
		end
	end

	def add_to_history
		user_logged_in = current_user
		user_logged_in.histories << History.find_by(artist: @artist)
	end
end
