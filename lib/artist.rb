class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(title)
    song = Song.new(title)
    @songs << song
    song.artist = self
    song
  end

  def self.song_count
    self.songs
  end
end
