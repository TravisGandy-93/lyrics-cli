class Api 
  BASE_URL = "https://api.lyrics.ovh/v1/"
  
  def self.get_lyrics
    res = RestClient.get(BASE_URL)
    byebug
  end 
  
end 