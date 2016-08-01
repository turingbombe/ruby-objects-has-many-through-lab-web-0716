class Artist
  attr_accessor :name, :songs, :genres
  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    self.songs << song
    self.songs.last.artist = self
    self.genres << self.songs.last.genre
  end

end