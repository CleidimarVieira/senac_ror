class Book
	attr_accessor :title, :publication_year

	def initialize(title, publication_year)
		@title, @publication_year = title, publication_year
	end

	def example
	end

	def to_s
		return "Título: #{self.title}, \n Ano de Publicação: #{self.publication_year}" 
	end
end
