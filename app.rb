require 'sinatra/base'
require './lib/bookmarks.rb'
require './database_connection_setup'

class BookmarkApp < Sinatra::Base

  before do
    @bookmarks = Bookmarks.instance
  end

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    erb :bookmarks
  end

  post '/add-bookmark' do
    @bookmarks.add_bookmark(params[:add_bookmark_field])
    redirect '/'
  end

end
