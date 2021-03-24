require 'db'

def setup_test_db
  connection = DB.setup('bookmark_manager_test')
  DB.query("DROP TABLE bookmarks_1;")
  DB.query("CREATE TABLE bookmarks_1(id SERIAL PRIMARY KEY, url VARCHAR(60), title VARCHAR(60));")
  DB.query("INSERT INTO bookmarks_1 (title, url) VALUES ('ruby', 'https://ruby-doc.org/'), ('destroy', 'http://www.destroyallsoftware.com')")
end
