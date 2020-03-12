feature 'View a list of bookmarks' do
	scenario 'A user can see bookmarks' do 
    Bookmarks.create(title: "Makers Academy", url: "http://www.makersacademy.com")
    Bookmarks.create(title: "Destroy all software", url: "http://www.destroyallsoftware.com")
    Bookmarks.create(title: "Google", url: "http://www.google.com")
    visit('/bookmarks')
    expect(page).to have_link('Makers Academy', href: "http://www.makersacademy.com") 
    expect(page).to have_link('Destroy all software', href: "http://www.destroyallsoftware.com") 
    expect(page).to have_link('Google', href: "http://www.google.com") 
	end
end