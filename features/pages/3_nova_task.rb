class Nova_task < SitePrism::Page

	element :subject, 'input#name'
	element :start_date, 'input#date_start_date'
	element :description, 'textarea#description'
	element :save, 'input#SAVE', match: :first
	element :star, :xpath, '//*[@id="pagecontent"]/div[1]/div[1]/div[1]/span'

	
	
	def preencher (titulo, descricao)
		subject.set(titulo)
		description.set(descricao)
	end

	def teste(titulo)
		assert_text(titulo)
	end
end