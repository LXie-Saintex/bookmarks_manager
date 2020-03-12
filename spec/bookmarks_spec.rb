require 'bookmarks'
require 'database_helper'

describe Bookmarks do 
	it 'fetches bookmarks from datatbase'  do 
    	connection = PG.connect(dbname: 'bookmark_manager_test')

        bookmark = Bookmarks.create(title: 'Makers Academy', url: 'http://www.makersacademy.com')
        Bookmarks.create(title: 'Destroy all software', url: 'http://www.destroyallsoftware.com')
        Bookmarks.create(title: 'Google', url: 'http://www.google.com')

    	bookmarks = Bookmarks.all
        expect(bookmarks.length).to eq 3
        expect(bookmarks.first).to be_a Bookmarks
        expect(bookmarks.first.id).to eq bookmark.id
        expect(bookmarks.first.title).to eq 'Makers Academy'
        expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
	end
end

describe '.create' do 
    it 'creates new bookmark' do 
        bookmark = Bookmarks.create(title: 'WhatsApp', url: 'www.whatsapp.com')
        persisted_data = persisted_data(id: bookmark.id)

        expect(bookmark).to be_a Bookmarks 
        expect(bookmark.id).to eq persisted_data.first['id']
        expect(bookmark.title).to eq 'WhatsApp'
        expect(bookmark.url).to eq 'www.whatsapp.com'
    end
end