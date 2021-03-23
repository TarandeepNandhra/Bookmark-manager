require 'bookmarks'
require_relative '../setup_test_db'

describe Bookmarks do
  let(:test_bookmarks) { Bookmarks.new_bookmarks }
  setup_test_db

  describe 'display_bookmarks' do
    it 'returns a list of all bookmarks' do
      expect(test_bookmarks.display_bookmarks).to include "ruby-doc"
    end
  end
  describe 'sql_bookmarks' do
    it 'returns a list of urls from the SQL database' do
      expect(test_bookmarks.display_bookmarks).to include "ruby-doc"
    end
  end
  describe 'add_bookmark' do
    it 'adds a bookmark url to the db' do
      url = "test"
      sql = "INSERT INTO bookmarks_1 (url) VALUES ('test');"
      expect(DB).to receive(:query).with(sql)
      test_bookmarks.add_bookmark(url)
    end
  end
end

