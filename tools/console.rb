require_relative '../config/environment.rb'


melissa = Artist.new("Melissa", 1)
picasso = Artist.new("Picasso", 25)
monet = Artist.new("Monet", 22)

gallery1 = Gallery.new("Gal1", "Los Angeles")
gallery2 = Gallery.new("Gal2", "Miami")

lily = Painting.new("Lily", 1000, monet, gallery1)
mona_lisa = Painting.new("Mona", 2000, melissa, gallery2)
garden = Painting.new("Garden", 3000, picasso, gallery2)
breakfast = Painting.new("breakfast", 500, melissa, gallery1)




p melissa.average_paintings_year 


binding.pry

puts "Bob Ross rules."
