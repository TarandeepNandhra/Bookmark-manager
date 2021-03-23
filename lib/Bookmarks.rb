require_relative './db'

class Bookmarks

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
    DB.query("SELECT * FROM bookmarks_1 ORDER BY id;")
  end

  def add_bookmark(url)
    DB.query("INSERT INTO bookmarks_1 (url) VALUES ('#{url}');")
  end
end