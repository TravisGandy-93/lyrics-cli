class Cli 
  
  
  def run 
      hello
      get_user_input
      is_that_it
      
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
  
  def is_that_it
      puts "Would you like to search for a different set of lyrics?(yes/no)"
      answer = gets.chomp
      if answer == "yes"
          get_user_input
      end 
  end 
  
end 