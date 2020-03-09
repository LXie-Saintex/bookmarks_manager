feature 'View a list of bookmarks' do
	scenario 'returns a list of existing bookmarks' do
		visit '/bookmarks'
		page.should have_link('ruby cheatsheet')
	end
end