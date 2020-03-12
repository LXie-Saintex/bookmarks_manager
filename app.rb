require 'sinatra/base'
require './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base
  get '/test' do
    'Hello World'
  end

  get '/bookmarks' do 
  	p "Bookmarks.all: #{Bookmarks.all}"
  	p "Bookmarks.all.first.class: #{Bookmarks.all.first.class}"
  	@bookmarks =Bookmarks.all
  	erb :index
  end

  get '/bookmarks/new' do 
  	erb :"bookmarks/new"
  end 

  post '/bookmarks' do 
  	Bookmarks.create(title: params[:title], url: params[:url])
  	redirect '/bookmarks'
  end

  run! if app_file == $0
end