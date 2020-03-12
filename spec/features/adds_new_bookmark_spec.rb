feature 'adds new bookmark' do 
	scenario 'allows user to add bookmark' do 
		visit('/bookmarks/new')
		fill_in('title', with: 'KK Harris')
		fill_in('url', with: 'www.kaelynnharris.com')
		click_button 'Add'
		expect(page).to have_content 'www.kaelynnharris.com'
	end
end