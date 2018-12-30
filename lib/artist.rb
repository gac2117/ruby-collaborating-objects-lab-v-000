class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all 
  end
  
  def name

  end
  
  def self.find_or_create_by_name(name)
    self.all.find{|artist| artist.name == name} || self.new(name).tap{|artist| artist.save}
  end

  def add_song(song)
    @songs << song 
  end

  def save

  end
end
