class Gallery
  attr_reader :name, :city
  
  ALL = []

  def initialize(name, city)
    @name = name
    @city = city
  end

  def self.all
    ALL 
  end
  
  def cities 
    all_cities = self.all.map do |gallery_obj|
      gallery_obj.city
    end
    
    all_cities.uniq
  end
  
  def artists
    results = Painting.all.select do |painting_obj|
      painting_obj.gallery == self
    end
    
    results.map do |painting_obj|
      painting_obj.artist
    end
  end

end
