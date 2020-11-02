class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    Gallery.all << self 
  end

  def paintings
    Painting.all.select { |painting| painting.gallery == self}
  end

  def artists
    self.paintings.map {|painting| painting.artist}
  end

  def artist_names
    self.artists.map { |artists| artists.name}
  end

  def most_expensive_painting
    most = 0
    exp_painting = nil 
    self.paintings.each do |painting|
      if painting.price > most 
        most = painting.price 
        exp_painting = painting
      end
    end
    exp_painting 
  end

  def self.all
    @@all << self
  end

end
