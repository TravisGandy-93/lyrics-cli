class Cli 
  
  
  def run 
      hello
      get_user_input
      goodbye
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
      Lyrics.new(title, artist)
      Api.get_lyrics(a, t)
      is_that_it
  end 
  
  def is_that_it
      puts "Would you like to search for a different set of lyrics?(yes/no)"
      answer = gets.chomp
          case answer
          when "yes"
              get_user_input
          when "no"
              want_a_list
          else
            puts "Sorry that wont work."
          end 
  end 
  
  def want_a_list
      puts "Would you like a list of the artists or song names you have searched?(yes/no)" 
      yes_or_no = gets.chomp 
    if yes_or_no == "yes"
        puts "artists or songs?"
      answer = gets.chomp 
        case answer
        when "artists"
          list_lyric_artists
        when "songs"
          list_lyric_titles
        else
          puts "Sorry wrong answer."
      end 
    else
      goodbye
    end 
  end 
  
  def goodbye
      puts "Thanks for stopping by friend. Hope you found everything you need for now. See you next time."
  end 
  
  def list_lyric_titles
      Lyrics.list_titles
  end 
  
  def list_lyric_artists
      Lyrics.list_artists
  end 
  
end 