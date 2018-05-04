class Artist
  attr_accessor :name
  @@song_count = 0
  @songs = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    self.songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(title)
    song = Song.new(title)
    @songs << song
    song.artist = self
  end

  def self.song_count

  end

end
