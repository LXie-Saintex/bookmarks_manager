require 'pg'

class Bookmarks 
	attr_reader :id, :title, :url
	def initialize(id:, title:, url:)
		@id = id
		@title = title
		@url = url
	end
	def self.all 
		if ENV['ENVIRONMENT'] == 'test'
			connection = PG.connect(dbname: 'bookmark_manager_test')
		else 
			connection = PG.connect(dbname: 'bookmark_manager')
		end
		results = connection.exec("SELECT * FROM bookmarks;")
		results.map { |bookmark| {title: bookmark['title'], url: bookmark['url']} }
	end
	def self.create(title:, url:)
		if ENV['ENVIRONMENT'] == 'test'
			connection = PG.connect(dbname: 'bookmark_manager_test')
		else 
			connection = PG.connect(dbname: 'bookmark_manager')
		end
		result = connection.exec("INSERT INTO bookmarks(url, title) VALUES('#{url}', '#{title}') RETURNING id, url, title;")
		Bookmarks.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
	end
end