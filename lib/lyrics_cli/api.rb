class Api 
  BASE_URL = "https://api.lyrics.ovh/v1"
  
  def self.get_lyrics
    res = RestClient.get(BASE_URL + "/drake" + "/losses")
    data = JSON.parse(res.body)
    data["lyrics"].split("\n\n")
  end 
  
end 