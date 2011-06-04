class Song
  attr_accessor :name, :duration, :artist
  def initialize(name, artist, duration)
    @name = name
    @duration = duration
    @artist = artist
  end
  def to_s
    "The song #{@name} by #{@artist.to_s} is #{@duration} seconds long"
  end
end
class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def to_s
    "the artist #{name}"
  end
end

rem        = Artist.new "REM"
billy_joel = Artist.new "Billy Joel"
drop_kicks = Artist.new "Dropkick Murphys"

@song_list = []
@song_list << Song.new("Allentown", billy_joel, 333)
@song_list << Song.new("Find a River", rem, 498)
@song_list << Song.new("Drive", rem, 498)
@song_list << Song.new("Captain Kelly's Kitchen", 
                        drop_kicks, 897)





