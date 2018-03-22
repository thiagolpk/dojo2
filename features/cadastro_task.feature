#language: pt
#utf-8

Funcionalidade: Buscar Texto
	Eu como usuário Admin
	Quero logar no site suite crm
	Para realizar o cadastro de novas tasks

Contexto: Usuario loga no site
Dado Que esteja logado no site suite crm

@Cadastro
Esquema do Cenario: Cadastro de task
	Quando Acessar a pagina create task
	E Efetuar um novo cadastro de task com "<nome>" e "<descricao>"
	Entao Uma nova task "<nome>" e gerada

Exemplos:
	|nome          |descricao           |
	|Dojo Desafio  |Criar uma nova task |
	|Segunda Task  |Descricao da Segunda|

@Edicao
Esquema do Cenario: Edicao de task
	Quando Acessar a pagina de tasks
	E Efetuar a edicao da task "<nome>" para a nova descricao "<descricao>"
	Entao A task "<nome>" e alterada com sucesso

Exemplos:
	|nome          |descricao                |
	|Dojo Desafio  |Editar a task            |
	|Segunda Task  |NOVA Descricao da Segunda|

@Exclusao
Esquema do Cenario: Exclusao de task
	Quando Acessar a pagina de tasks
	E Efetuar a exclusao da task "<nome>"
	Entao A task e excluida com sucesso

Exemplos:
	|nome          |
	|Dojo Desafio  |
	|Segunda Task  |