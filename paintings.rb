class Painting

  attr_reader :title, :artist, :location
  ALL =[]

  def initialize(title, artist, location )
    @title = title
    @artist = artist
    @location = location
    ALL << self
  end

  def self.all
    ALL
  end

  def paintings_location
    self.location.city
  end
end
