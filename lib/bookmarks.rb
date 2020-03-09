class Bookmarks 
	def initialize 
		@bookmarks = [{link: 'https://www.github.com', text: 'ruby cheatsheet'}, 
			{link: 'https://www.google.com', text: 'Google'}, 
			{link: 'https://www.rockfic.com', text: 'Rock n roll BL'}]
	end
	def all 
		@bookmarks
	end
end