class Artist
  attr_accessor :name

  @@all = []


  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end

  def save
    @@all << self
  end

  def self.create(artist)
    created_artist = self.new(artist)
    @@all << created_artist
    created_artist
  end

  def songs
    @songs
  end

  def add_song
    Song.artist = self
  end
end
