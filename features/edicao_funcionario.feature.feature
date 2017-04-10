#language: pt
#utf-8

Funcionalidade: Manutencao de Funcionarios
Eu como usuario do ORANGEHRM
Quero acessar minha conta
Para realizar a manutencao do cadastro de funcionarios - EDICAO

@edicao1
Cenario: Edicao de nacionalidade de funcionario
Dado que esteja na home do ORANGEHRM
Quando acessar minha conta com usuario e senha 
E clicar no menu PIM, Employee List
E selecionar o funcionario 
E alterar o campo Nationality e salvar
Entao sistema exibe mensagem de confirmacao de alteracao

@edicao2
Cenario: Edicao de estado civil e sexo de funcionario
Dado que esteja na home do ORANGEHRM
Quando acessar minha conta com usuario e senha 
E clicar no menu PIM, Employee List
E selecionar o funcionario 
E alterar os campos e salvar
Entao sistema exibe mensagem de confirmacao de alteracao