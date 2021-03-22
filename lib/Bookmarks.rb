class Bookmarks
  BOOKMARKS_ARRAY = [
    ['Ruby-Doc', 'https://ruby-doc.org/' ],
    ['GitHub', 'https://github.com/'],
    ['Han Solo', 'https://www.starwars.com/databank/han-solo'],
    ['Japanese Jazz Mix' , 'https://youtu.be/kNRIFhkYONc']
  ]
  
  def initialize
    @bookmarks_data = BOOKMARKS_ARRAY
  end

  def self.instance
    @bookmarks
  end

  def self.new_bookmarks
    @bookmarks = Bookmarks.new
  end

  def display_bookmarks
    display = []
    @bookmarks_data.each { |bookmark| display << "#{bookmark[0]} | #{bookmark[1]}"}
    display.join("<br>")
  end
end