require 'db'

def setup_test_db
  connection = DB.setup('bookmark_manager_test')
  DB.query("DROP TABLE bookmarks_1;")
  DB.query("CREATE TABLE bookmarks_1(id SERIAL PRIMARY KEY, url VARCHAR(60));")
  DB.query("INSERT INTO bookmarks_1 (url) VALUES ('https://ruby-doc.org/'), ('http://www.destroyallsoftware.com')")
end
