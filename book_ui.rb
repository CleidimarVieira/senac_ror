require_relative './book'
require_relative './book_manager'

class BookUI
    def initialize
    	@book_manager = BookManager.new
		@menu = <<-MENU
		1. Cadastrar
		2. Pesquisar
		3. Deletar
		4. Listar
		5. Sair
		MENU
    end

    def show_menu
    	puts @menu
    end

# Cadastrar
	def add
		puts "Digite o título do livro"
		title = gets.chomp
		puts "Digite o ano de publicação da obra"
		publication_year = gets.chomp.to_i
		
		book = Book.new(title, publication_year)
		@book_manager.add(book)
	end

	def search(title)
		resultado = @book_manager.search(title)
		puts (resultado.nil?) ? "Livro não cadastrado" : "Livro cadastrado: #{resultado}"
	end

	def remover(title)
		resultado = @book_manager.search(title)
		if resultado.nil? 
			puts "Livro não cadastrado"
		else
			@book_manager.remover(resultado.title)
			puts "Livro removido: #{resultado.title}"
		end
	end

	def list_titles
		books = @book_manager.list_titles
		books.each { |book| puts book.title }
	end

end

