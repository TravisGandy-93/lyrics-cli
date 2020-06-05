class Cli 
  
  
  def run 
      hello
      get_user_input
      
      
  end 
  
  def hello
      puts "welcome to your lyric search Cli."
  end 
  
  def get_user_input
      puts "Enter artist name:"
      artist = gets.chomp
      a = URI.encode(artist)
      puts "Enter song name:"
      title = gets.chomp
      t = URI.encode(title)
      Api.get_lyrics(a, t)
  end 
  
  
  
  
end 