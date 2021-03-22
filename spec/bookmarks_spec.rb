require 'bookmarks'

describe Bookmarks do
  let(:test_bookmarks) { Bookmarks.new_bookmarks }

  describe 'display_bookmarks' do
    it 'returns a list of all bookmarks' do
      expect(test_bookmarks.display_bookmarks).to eq TEST_BOOKMARKS
    end
  end
end

TEST_BOOKMARKS = "Ruby-Doc | https://ruby-doc.org/<br>GitHub | https://github.com/<br>" +
 "Han Solo | https://www.starwars.com/databank/han-solo<br>Japanese Jazz Mix | https://youtu.be/kNRIFhkYONc"