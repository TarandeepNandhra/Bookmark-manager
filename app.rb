require 'sinatra/base'
require './lib/bookmarks.rb'
# sets up production or test database
require './database_connection_setup'

class BookmarkApp < Sinatra::Base
  enable :method_override

  get '/' do
    erb :index
  end

  post '/add-bookmark' do
    Bookmarks.add_bookmark(url: params[:add_bookmark_url], title: params[:add_bookmark_title])
    redirect '/'
  end

  delete '/bookmarks/:id' do
    Bookmarks.delete(id: params[:id])
    redirect '/'
  end
end
