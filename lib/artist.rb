require 'pry'
class Artist 
  
  attr_accessor :name
  
  @@all = []
  
   def initialize(name)
     @name = name
     @@all << self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
   song.artist = self
  end
  
   def save
   @@all << self 
 end
  
  def self.all
   @@all 
   
  #binding.pry
 end
  
  def self.find_or_create_by_name(name)
  x = @@all.find {|artist| artist.name == name}
 if x 
   x 
 else 
   Artist.new(name)
end

end
#binding.pry
 
 
# def print_songs
  
#   songs.join(', ')
   
#   end
   
  

end