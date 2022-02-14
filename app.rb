require 'sinatra/base'
require 'sinatra/reloader'

class Bookmark < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.new
    erb :bookmarks
  end

  run! if app_file == $0
end