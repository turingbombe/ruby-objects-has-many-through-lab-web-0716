class Genre
  attr_accessor :artists, :songs, :name
  def initialize(genre)
    @name = genre
    @songs = []
    @artists = []
  end

  def add_song(song)
    self.songs << song
    # self.artists = self.songs.last.artist
  end

  def artists
    self.songs.collect {|song| song.artist}
  end
end