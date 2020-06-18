class Song
  
  attr_accessor :name
  attr_reader :artist, :genre
  
  @@all = []
  
  def initialize(name, artist, genre)
    
    @name = name
    self.save
    
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end