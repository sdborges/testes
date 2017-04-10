@edicao
Dado(/^que esteja na home do ORANGEHRM$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
end

Quando(/^clicar no menu PIM, Employee List$/) do
click_link('menu_pim_viewPimModule')
click_link('menu_pim_viewEmployeeList')
end

Quando(/^selecionar o funcionario$/) do
  click_button('searchBtn')
  click_link('0001')
end

Quando(/^alterar o campo Nationality e salvar$/) do
  click_button('btnSave')
  select('Brazilian', :from=> 'personal_cmbNation') 
  click_button('btnSave')
end

Entao(/^sistema exibe mensagem de confirmacao de alteracao$/) do
assert_text('Successfully Saved')
end

@edicao2
Quando(/^alterar os campos e salvar$/) do
click_button('btnSave')
choose('personal_optGender_1')
select('Single', :from=> 'personal_cmbMarital')
click_button('btnSave')
end