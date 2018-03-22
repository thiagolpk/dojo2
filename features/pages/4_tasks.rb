class Tasks < SitePrism::Page

	element :filtro, :xpath, '//*[@id="pagination"]/td/table/tbody/tr/td[1]/ul[3]/li/a', match: :first
	element :subject, 'input#name_basic'
	element :search, 'input#search_form_submit'
	element :edit, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr/td[2]'
	element :excluir, :xpath, '//*[@id="743efc50-5388-215b-8c48-5ab2afd9e4ee"]/span'
	element :description, 'textarea#description'
	element :save, 'input#SAVE', match: :first
	element :confirmaExclusao, :xpath, '//*[@id="closeActivityDialog"]/div[3]/span/button[1]'
	element :selecionar, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr/td[1]/input'
	element :bulkaction, :xpath, '//*[@id="delete_listview_top"]/label[2]'
	element :delete, :xpath, '//*[@id="actionLinkTop"]/li/ul/li[3]'
	element :removebusca, :xpath, '//*[@id="MassUpdate"]/div[3]/div/ul[2]/li[1]/a[2]'

	def procurarAlterar(nomeTask, novaDesc)
		filtro.click
		subject.set(nomeTask)
		search.click
		edit.click
		description.set(novaDesc)
	end

	def procurarExcluir(nomeTaskExcluir)
		filtro.click
		subject.set(nomeTaskExcluir)
		search.click
		selecionar.click
		sleep 1
		bulkaction.click
		sleep 1
		delete.click
		page.driver.browser.switch_to.alert.accept

	end
		
	def teste(msg)
		assert_text(msg)
	end
end