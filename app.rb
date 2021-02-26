require 'sinatra/base'
require_relative './lib/bookmark'


class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end  

  get '/bookmarks' do  
    p ENV
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    
    erb :"bookmarks/new"
  end

  run! if app_file == $0
end
