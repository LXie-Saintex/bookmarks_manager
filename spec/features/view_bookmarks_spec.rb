feature 'View a list of bookmarks' do
	scenario 'returns a list of existing bookmarks' do
		visit('/bookmarks')
		save_and_open_page
		page.should have_link('http://www.makersacademy.com')
		page.should have_link('http://www.destroyallsoftware.com')
		page.should have_link('http://google.com')
	end
end