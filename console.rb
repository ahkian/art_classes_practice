require 'pry'
require_relative "./paintings.rb"
require_relative "./galleries.rb"
require_relative "./artists.rb"

met = Gallery.new("The Metropolitan Museum of Art", "New York")
louvre = Gallery.new("The Louvre", "Paris")
natl = Gallery.new("The National Gallery", "Washington D.C.")

vinci = Artist.new("Leonardo Da Vinci")
picasso = Artist.new("Pablo Picasso")
rodin = Artist.new("Auguste Rodin")
monet = Artist.new("Claude Monet")

vitruvian = Painting.new("Vitruvian Man", vinci, met)
mona_lisa = Painting.new("Mona Lisa", vinci, louvre)
last_supper = Painting.new("The Last Supper", vinci, natl)
bather = Painting.new("Large Bather", picasso, met)
acrobat = Painting.new("Acrobat", picasso, met)
asleep = Painting.new("Asleep", picasso, louvre)
kiss = Painting.new("The Kiss", rodin, natl)
thinker = Painting.new("The Thinker", rodin, louvre)
calais = Painting.new("The Burghers of Calais", rodin, natl)
binding.pry
puts true
