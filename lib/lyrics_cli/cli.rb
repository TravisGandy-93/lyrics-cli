class Cli 
  
  
  def run 
      hello
      puts "Enter artist name:"
      artist = gets.chomp
      puts "Enter song name:"
      title = gets.chomp
      Api.get_lyrics(artist, title)
      
  end 
  
  def hello
      puts "welcome to your lyric search Cli."
  end 
  
  def get_user_input
      
  end 
  
  
end 