require_relative './book_ui'

book_ui = BookUI.new
loop do
	book_ui.show_menu
	opcao = gets.chomp.to_i

	case opcao
	when 1
		book_ui.add
	when 2
		title = gets.chomp
		book_ui.search(title)
	when 3
		title = gets.chomp
		book_ui.remover(title)
	when 4
		book_ui.list_titles
	else
		"Opção inválida"
	end
	break if opcao==5
end	
