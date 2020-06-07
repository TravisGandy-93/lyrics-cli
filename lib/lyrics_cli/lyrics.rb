class Lyrics
  attr_accessor :title, :artist
  
  @@all = []
  @@artists = []
  @@titles = []
  def initialize(title, artist)
    @title = title
    @artist = artist
    @@all << self 
    @@artists << artist
    @@titles << title
  end 
  
  def self.all 
      @@all 
  end 
  
  def self.list_artists
      @@artists
  end 
  
  def self.list_titles
      @@titles
  end 
  
end 