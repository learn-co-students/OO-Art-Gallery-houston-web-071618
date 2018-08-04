class Painting
  attr_reader :title, :style
  @@all = []

  def initialize(title, style)
    @title = title
    @style = style
    @@all << self
  end

  def self.all
    @@all
  end
end
