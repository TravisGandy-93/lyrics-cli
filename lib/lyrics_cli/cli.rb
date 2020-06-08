class Cli 
  
  
  def run 
      hello
      sleep 1 
      get_user_input
      goodbye
  end 
  
  def hello
      puts Rainbow("Welcome to your lyric search Cli.").red.bold
  end 
  
  def get_user_input
      puts "Enter artist name:"
      artist = gets.chomp
      a = URI.encode(artist)
      puts "Enter song name:"
      title = gets.chomp
      t = URI.encode(title)
      Lyrics.new(title, artist)
      puts Rainbow("---------------------").red.bold
      sleep 1
      Api.get_lyrics(a, t)
      is_that_it
  end 
  
  def is_that_it
      puts Rainbow("Would you like to search for a different set of lyrics?(yes/no)").red
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
      puts Rainbow("Would you like a list of the artists or song names you have searched?(yes/no)").red
      yes_or_no = gets.chomp 
    if yes_or_no == "yes"
        puts Rainbow("artists or songs?").red
      answer = gets.chomp 
       puts Rainbow("---------------------").red.bold
        case answer
        when "artists"
          list_lyric_artists
        when "songs"
          list_lyric_titles
        else
          puts "Sorry wrong answer."
        end 
    end 
  end 
  
  def goodbye
      puts Rainbow("Thanks for stopping by friend. Hope you found everything you need for now. 
      
      See you next time.").red.italic.bold
  end 
  
  def list_lyric_titles
      Lyrics.list_titles
  end 
  
  def list_lyric_artists
      Lyrics.list_artists
  end 
  
end 