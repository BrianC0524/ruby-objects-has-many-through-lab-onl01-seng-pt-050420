class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    
    @name = name
    self.save
    
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(song, genre)
    
    song = Song.new(song, genre)
    song.artist = self
    
  end
  
  def songs
    
    Song.all.select do |song|
      
      song.artist.name == self.name
      
    end
    
  end
  
  def genres
    
    songs.collect do |song|
      
      song.genre
      
    end
    
  end
  
end