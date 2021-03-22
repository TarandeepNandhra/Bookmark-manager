require 'bookmarks'

describe Bookmarks do
  let(:test_bookmarks) { Bookmarks.new_bookmarks }

  describe 'display_bookmarks' do
    it 'returns a list of all bookmarks' do
      expect(test_bookmarks.display_bookmarks).to eq TEST_BOOKMARKS
    end
  end
  describe 'sql_bookmarks' do
    it 'returns a list of urls from the SQL database' do
      expect(test_bookmarks.sql_bookmarks).to include TEST_SQL_URLS
    end
  end
end
TEST_SQL_URLS = "ID | URL <br>1 | https://ruby-doc.org/<br>2 | http://www.destroyallsoftware.com<br>" + 
"3 | https://www.starwars.com/databank/han-solo<br>4 | https://youtu.be/kNRIFhkYONc"
TEST_BOOKMARKS = "Ruby-Doc | https://ruby-doc.org/<br>GitHub | https://github.com/<br>" +
 "Han Solo | https://www.starwars.com/databank/han-solo<br>Japanese Jazz Mix | https://youtu.be/kNRIFhkYONc"

