require_relative './db'

class Bookmarks

  attr_reader :id, :title, :url

  def initialize(id:, title:, url:)
    @id = id
    @title = title
    @url = url    
  end

  def self.display_bookmarks
    (get_bookmarks.map { |bookmark| "#{bookmark.id} | #{bookmark.title} | #{bookmark.url}" }).join("<br>")
  end

  def self.get_bookmarks
    result = DB.query("SELECT * FROM bookmarks_1 ORDER BY id;")
    result.map { |bookmark| Bookmarks.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url']) }
  end

  def self.add_bookmark(url:, title:)
    # Returns the Id, title and url so we can create a new bookmark object.
    result = DB.query("INSERT INTO bookmarks_1 (url, title) VALUES('#{url}', '#{title}') RETURNING id, title, url;")
    Bookmarks.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
  end

  def self.delete(id:)
    DB.query("DELETE FROM bookmarks_1 WHERE id = #{id}")
  end

  def self.update(id:, url:, title:)
    result = DB.query("UPDATE bookmarks_1 SET url = '#{url}', title = '#{title}' WHERE id = #{id} RETURNING id, url, title;")
    Bookmarks.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
  end

  def self.find(id:)
    result = DB.query("SELECT * FROM bookmarks_1 WHERE id = #{id};")
    Bookmarks.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
  end
end