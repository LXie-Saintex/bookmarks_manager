require 'bookmarks'

describe Bookmarks do 
	it 'fetches bookmarks from datatbase'  do 
		bookmarks = Bookmarks.new.all
		expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://google.com"
	end
end