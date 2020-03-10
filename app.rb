require 'sinatra/base'
require './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base
  get '/test' do
    'Hello World'
  end

  get '/bookmarks' do 
  	p @bookmarks =Bookmarks.new.all
  	erb :index
  end

  run! if app_file == $0
end