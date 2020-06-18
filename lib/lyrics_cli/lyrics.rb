class Lyrics
  attr_accessor :title, :artist
  
  @@all = []
  @@artists = []
  @@titles = []
  def initialize(title, artist)
    @title = title
    @artist = artist
    @@all << self 
  end 
  
  def self.all 
      @@all 
  end 
  
  def self.list_artists
      @@all.each{|lyric| puts lyric.artist}
  end 
  
  def self.list_titles
      @@all.each{|lyric| puts lyric.title}
  end 
  
end 