require 'pg'

class Bookmarks 
	def self.all 
		if ENV['ENVIRONMENT'] == 'test'
			connection = PG.connect(dbname: 'bookmark_manager_test')
		else 
			connection = PG.connect(dbname: 'bookmark_manager')
		end
		results = connection.exec("SELECT * FROM bookmarks;")
		results.map { |bookmark| bookmark['url'] }
	end
	def self.create(title:, url:)
		if ENV['ENVIRONMENT'] == 'test'
			connection = PG.connect(dbname: 'bookmark_manager_test')
		else 
			connection = PG.connect(dbname: 'bookmark_manager')
		end
		connection.exec("INSERT INTO bookmarks(url, title) VALUES('#{url}', '#{title}')")
	end
end