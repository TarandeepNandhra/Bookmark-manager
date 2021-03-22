require 'sinatra/base'

class BookmarkApp < Sinatra::Base
  # enable :sessions
  # set :session_secret, "here be dragons"

  get '/' do
    erb :index
  end

end
