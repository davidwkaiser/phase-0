# Create a Playlist from Driver Code

# I worked on this challenge [David Kaiser, Daniel Homer].
# I spent [1] hours on this challenge.


# Pseudocode
#Create a song class. Create an initialize method that takes as arguments a song title and artist.
#Create a playlist class, consisting of a collection of Songs.

# Initial Solution
=begin
class Song
  attr_reader :name, :artist

  def initialize(name, artist)
    @name = name
    @artist = artist
  end

   def play
    puts "playing #{@name}"
    sleep(1)
  end
end

class Playlist
  attr_reader :songs, :num_of_tracks
  def initialize(*songs)
    @songs = songs
    @num_of_tracks = songs.length
  end

  def add(*songs_to_add)
    songs_to_add.each do |song|
      @songs.push(song)
      @num_of_tracks += 1
    end
  end

  def remove(song)
    @songs.delete(song)
    @num_of_tracks -= 1
  end

  def includes?(song_to_check)
    @songs.include?(song_to_check)
  end

  def play_all
    @songs.each do |song|
      song.play
    end
  end

  def display
    puts "Currently in the playlist:"
    @songs.each {|song| puts song.name + " by " + song.artist + "."}
  end
end
=end


# Refactored Solution

class Song
  attr_reader :name, :artist

  def initialize(name, artist)
    @name = name
    @artist = artist
  end

   def play
    puts "playing #{@name}"
    sleep(1)
  end
end

class Playlist
  attr_reader :songs, :num_of_tracks
  def initialize(*songs)
    @songs = songs
    @num_of_tracks = songs.length
  end

  def add(*songs_to_add)
    songs_to_add.each do |song|
      @songs.push(song)
      @num_of_tracks += 1
    end
  end

  def remove(song)
    @songs.delete(song)
    @num_of_tracks -= 1
  end

  def includes?(song_to_check)
    @songs.include?(song_to_check)
  end

  def play_all
    @songs.each {|song| song.play}
  end

  def display
    puts "Currently in the playlist:"
    @songs.each {|song| puts song.name + " by " + song.artist + "."}
  end

end




# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection
=begin
What concepts did you review in this challenge?
attribute readers, variable scoping, .each

What is still confusing to you about Ruby?
At this  point, just remembering the specific syntax. For example, I conceptually remember ".each,"
but I often forget the specific syntax of brackets and pipes and I have to look it up.

What are you going to study to get more prepared for Phase 1?
1 - objects and classes in Ruby
2 - loops, blocks, control structures in Ruby
3 - javascript objects and constructors


=end