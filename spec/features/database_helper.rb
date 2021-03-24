require 'db'

def persisted_data(id:)
  connection = DB.setup('bookmark_manager_test')
  result = DB.query("SELECT * FROM bookmarks_1 WHERE id = #{id};")
  result.first
end