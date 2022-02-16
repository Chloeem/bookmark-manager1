require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  # enable :sessions

  get '/' do
    # session[:bookmarks] = Bookmarks.new
    erb :index
  end

  get '/bookmarks' do
    # @bookmarks = session[:bookmarks]
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end