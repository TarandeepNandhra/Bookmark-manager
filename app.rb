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

  post '/add-bookmark' do
    p "print parameters"
    p params
    @bookmarks.add_bookmark(params[:add_bookmark_field])
    redirect '/'
  end

end
