class Artist
  attr_reader :name, :years_active
  
  ALL = []
  
  def initialize(name, years_active)
    @name = name
    @years_active = years_active
  end

  def self.all 
    ALL 
  end
  
  def paintings
    Painting.all.select do |painting_obj|
      painting_obj.artist == self
    end
  end
  
  def galleries
    self.paintings.map do |painting_obj|
      painting_obj.gallery
    end
  end
  
  def cities
    all_cities = self.galleries.map do |gallery_obj|
      gallery_obj.city
    end
    
    all_cities.uniq
  end
  
  def self.experience
    sum = self.all.reduce(0) do |total, artist_obj|
      total += artist_obj.years_active
    end
    
    sum / self.all.count
  end
end
