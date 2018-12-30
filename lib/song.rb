class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(files)
    song = self.new
    song.title = files.split(" - ")
    song
  end

  def artist=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
end
