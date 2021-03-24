require 'bookmarks'

describe Bookmarks do

  describe 'display_bookmarks' do
    it 'returns a list of all bookmarks' do
      expect(Bookmarks.display_bookmarks).to include "ruby-doc"
    end
  end
  describe '.get_bookmarks' do
    it 'returns an array of bookmarks from the database' do
      array = Bookmarks.get_bookmarks
      expect(array.first.url).to include "ruby-doc"
    end
  end
  describe '.add_bookmark' do
    it 'creates a new bookmark' do
      bookmark = Bookmarks.add_bookmark(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
      persisted_data = persisted_data(id: bookmark.id)
      expect(bookmark).to be_a Bookmarks
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://www.testbookmark.com'
    end
  end
  describe '.delete' do
    it 'deletes the given bookmark' do
      # Test database starts at length 2 
      bookmark = Bookmarks.add_bookmark(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
      Bookmarks.delete(id: bookmark.id)
      expect(Bookmarks.get_bookmarks.length).to eq 2
    end
  end
end

  