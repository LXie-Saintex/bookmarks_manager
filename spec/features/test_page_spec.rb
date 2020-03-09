feature 'test page' do
	scenario 'says hello' do
		visit '/test'
		page.should have_content 'Hello World'
	end
end