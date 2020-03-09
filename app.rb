require 'sinatra/base'
require './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base
  get '/test' do
    'Hello World'
  end

  get '/bookmarks' do 
  	list = Bookmarks.new
  	@bookmarks = list.all
  	erb :index
  end

  run! if app_file == $0
end