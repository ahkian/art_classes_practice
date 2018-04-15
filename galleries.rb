class Gallery

  attr_reader :gall_name, :city

  ALL = []

  def initialize(gall_name, city)
    @gall_name = gall_name
    @city = city
    ALL << self
  end

  def self.all
    ALL
  end
  def all_owned_pieces
    paintings = Painting.all.select do |p|
      if p.location == self
        p
      end
    end
    paintings
  end
  def all_artists
    list = self.all_owned_pieces
    list.map{|p| p.artist.name}.uniq
  end
end
