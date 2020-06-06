class Genre
  attr_accessor :name 
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  def self.all 
    @@all
  end
  def self.destroy_all
    @@all = []
  end
  def save
    @@all << self
  end
  def self.create(genre)
    newGenre = self.new(genre)
  end
end