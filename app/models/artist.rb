class Artist
  attr_reader :name, :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  #get list of all of the paintings by specific artist
  def list_paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  #Get a list of all the galleries that a specific artist has paintings in
  def list_galleries
    list_paintings.map do |gallery_painting|
      gallery_painting.gallery
    end
  end

  #Get a list of all cities that contain galleries that a specific artist has paintings in
  def list_cities
    list_galleries.map do |gallery|
      gallery.city
    end
  end

  #Find the average years of experience of all artists
  def self.years_experience
    total_experience = self.all.map do
      |artist| artist.years_active     end
    total_experience.reduce(:+) / (self.all.count)
  end
end
