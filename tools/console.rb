require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

gallery1 = Gallery.new("Gallery1", "Houston")
gallery2 = Gallery.new("Gallery2", "NY")
gallery3 = Gallery.new("Gallery3", "LA")

artist1 = Artist.new("Van Gogh", 20)
artist2 = Artist.new("Rembrandt", 40)
artist3 = Artist.new("Leonardo da Vinci
", 20)

# def initialize(title, style, artist, gallery)
painting1 = Painting.new("Angst", "Impressionist", artist1, gallery1)
painting2 = Painting.new("ScaryPainting", "ThisStyle", artist2, gallery2)

binding.pry
0
