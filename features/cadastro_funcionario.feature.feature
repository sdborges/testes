#language: pt
#utf-8

Funcionalidade: Manutencao de Funcionarios
Eu como usuario do ORANGEHRM
Quero acessar minha conta
Para realizar a manutencao do cadastro de funcionarios - ADICAO

@cadastro1
Cenario: Cadastro de Novo Funcionario somente com campos obrigatorios preenchidos
Dado que esteja na home do site do ORANGEHRM
Quando acessar minha conta com usuario e senha
E clicar no Menu PIM, Add Employee
E preencher os campos obrigatorios First Name e Last Name
Entao apresentara tela de cadastro Personal Details
E exibe um ID de identificacao do funcionario 

@cadastro2
Cenario: Cadastro de Novo Funcionario com preenchimento de todos os campos
Dado que esteja na home do site do ORANGEHRM
Quando acessar minha conta com usuario e senha
E clicar no Menu PIM, Add Employee
E preencher todos os campos
Entao apresentara tela de cadastro Personal Details
E exibe um ID de identificacao do funcionario 

@cadastro3
Cenario: Acesso com novo usuario cadastrado
Dado que esteja na home do site do ORANGEHRM
Quando acessar minha conta com usuario e senha criada
Entao apresentara o nome do usuario logado