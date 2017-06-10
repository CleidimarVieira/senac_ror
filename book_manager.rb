require_relative './book'

class BookManager
	def initialize
		@books = []
	end

	def add(book) #receber um objeto book
		#book = Book.new(title, publication_year)
		@books << book
	end

	def search(title)
		@books.each do |book|
			return book if book.title == title
		end
		return nil
	end

	def remover(title)
		@books.each do |book|
			@books.delete(book) if book.title == title
		end
		return nil
	end

	def list_titles 
		#retornar somente os títulos
		@books
	end

end
