class Artist

  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    Artist.all << self 
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self}
  end
  
  def galleries 
    self.paintings.map { |paintings| paintings.gallery}
  end

  def self.total_experience 
    self.all.sum{ |artist| artist.years_experience}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def average_paintings_year
    self.paintings.count / self.years_experience 
  end

  def self.most_prolific
    most = 0
    prolific_artist = nil
    self.all.each do |artist| 
      if artist.average_paintings_year > most
        most = artist.average_paintings_year
        prolific_artist = artist 
      end
    end
    prolific_artist 
  end


end
