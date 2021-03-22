require 'sinatra/base'
require './lib/bookmarks.rb'

class BookmarkApp < Sinatra::Base

  before do
    @bookmarks = Bookmarks.instance
  end

  get '/' do
    @bookmarks = Bookmarks.new_bookmarks
    erb :index
  end

  get '/bookmarks' do
    erb :bookmarks
  end

end
