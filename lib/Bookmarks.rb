require_relative 'db'

class Bookmarks
  
  def initialize
  end

  def self.instance
    @bookmarks
  end

  def self.new_bookmarks
    @bookmarks = Bookmarks.new
  end

  def display_bookmarks
    display = []
    get_bookmarks.each { |bookmark| display << "#{bookmark['id']} | #{bookmark['url']}"}
    display.join("<br>")
  end

  def get_bookmarks
    DB.setup('bookmark_manager')
    DB.query( "SELECT * FROM bookmarks_1 ORDER BY id" )
  end

  def add_bookmark(url)
    sql = "INSERT INTO bookmarks_1 (url) VALUES ('#{url}');"
    p sql
    DB.setup('bookmark_manager')
    DB.query( sql )
  end
end