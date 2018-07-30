class Painting
  attr_reader :title, :style, :artist, :gallery

  ALL = []
  
  def initialize(title, style, artist_obj, gallery_obj)
    @artist = artist_obj
    @gallery = gallery_obj
    @title = title
    @style = style
  end
  
  def self.all 
    ALL 
  end
  
  def self.styles
    all_styles = self.all.map do |painting_obj|
      painting_obj.style
    end
    
    all_styles.uniq
  end
end
