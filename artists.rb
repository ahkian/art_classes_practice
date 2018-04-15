require 'pry'
class Artist

  attr_reader :name
  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def paintings_of_artist
    paintings = Painting.all.select do |p|
      if p.artist == self
        p
      end
    end
    paintings
  end

  def cities_with_artist
    list = self.paintings_of_artist
    list.map{|p| p.location.city}.uniq
  end
end
