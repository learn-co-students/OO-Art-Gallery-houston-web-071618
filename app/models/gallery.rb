class Gallery
  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  #Get a list of all cities that have a gallery. A city should not appear more than once in the list.
  def self.cities_with_gallery
    cities_galleries = self.all.map do |gallery|
      gallery.city
    end
    cities_galleries.uniq
  end

  #Get a list of artists that have paintings at a specific gallery
  def get_artists
    paintings = Painting.all.select do |painting|
      painting.gallery == self
    end
    paintings.map do |painting|
      painting.artist
    end
  end

  #Get a list of the names of artists that have paintings at a specific gallery
  def get_artist_list
    get_artists.map do |artist|
      artist.name
    end
  end

  #Get the combined years of experience of all artists at a specific gallery
  def combined_years_experience
    years = get_artists.map do |artists|
      artists.years_active
    end
    years.reduce(:+)
  end
end
