class Api 
 
   BASE_URL = "https://api.lyrics.ovh/v1/"
  
  def self.get_lyrics(artist, title)
    res = RestClient.get(BASE_URL + "#{artist}" + "/" + "#{title}")
    data = JSON.parse(res.body)
    puts data["lyrics"].split("\n\n")
  end 
  
end 