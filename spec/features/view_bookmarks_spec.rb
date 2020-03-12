feature 'View a list of bookmarks' do
	scenario 'A user can see bookmarks' do 
    Bookmarks.create(title: "Makers Academy", url: "http://www.makersacademy.com")
    Bookmarks.create(title: "Destroy all software", url: "http://www.destroyallsoftware.com")
    Bookmarks.create(title: "Google", url: "http://www.google.com")
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
	end
end