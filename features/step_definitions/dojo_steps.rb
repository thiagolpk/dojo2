

Dado("Que esteja logado no site suite crm") do
  @acesso = Login.new
  @acesso.load
  @acesso.logar("will", "will")
  @acesso.teste("
                        SUITECRM DASHBOARD
                    ")
end

Quando("Acessar a pagina create task") do
  @home = Home.new
  @home.create.click 
  @home.create_task.click
  @home.teste("CREATE TASK OVERVIEW")
end

E("Efetuar um novo cadastro de task com {string} e {string}") do |string, string2|
  @nova_task = Nova_task.new
  @nova_task.preencher(string, string2)
  @nova_task.save.click
end

Entao("Uma nova task {string} e gerada") do |string|
  data = Time.now.strftime("%Y%m%dT%H%M%S")
  @nova_task.teste(string)
  # binding.pry
  #page.execute_script("window.scrollBy(0,200)")
  page.save_screenshot 'Nova Task '+data+'.png'

end

Quando("Acessar a pagina de tasks") do
  @home = Home.new
  @home.activities.click 
  @home.tasks.click
  @home.teste("  Tasks ")
end

E("Efetuar a edicao da task {string} para a nova descricao {string}") do |string, string2|
 data = Time.now.strftime("%Y%m%dT%H%M%S")
 @edit = Tasks.new
 @edit.procurarAlterar(string, string2)
 page.save_screenshot 'Edicao task '+data+'.png'
 @edit.save.click
 
end

Entao("A task {string} e alterada com sucesso") do |string|
  @edit.teste(string)
end

E("Efetuar a exclusao da task {string}") do |string|
 data = Time.now.strftime("%Y%m%dT%H%M%S")
 @excluir = Tasks.new
 @excluir.procurarExcluir(string)
 page.save_screenshot 'Exclusao task '+data+'.png'

end

Entao("A task e excluida com sucesso") do
   @excluir.teste('No results found')
   @excluir.removebusca.click
end