class Painting
  attr_reader :title, :style, :artist, :gallery
  @@all = []

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.styles
    painting_styles = self.all.map do |painting|
      painting.style
    end
    painting_styles.uniq
  end
end
