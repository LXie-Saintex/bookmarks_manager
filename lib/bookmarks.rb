require 'pg'

class Bookmarks 
	def all 
		connection = PG.connect(dbname: 'bookmark_manager')
		results = connection.exec("SELECT * FROM bookmarks;")
		results.map { |bookmark| bookmark['url'] }
	end
end