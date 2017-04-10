@cadastro1
Dado(/^que esteja na home do site do ORANGEHRM$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
end

Quando(/^acessar minha conta com usuario e senha$/) do
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Quando(/^clicar no Menu PIM, Add Employee$/) do
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')
end

Quando(/^preencher os campos obrigatorios First Name e Last Name$/) do
fill_in('firstName', :with => 'Henrique')
fill_in('lastName', :with => 'Silva')
click_button('btnSave')
end

Entao(/^apresentara tela de cadastro Personal Details$/) do
assert_text('Personal Details')
end

Entao(/^exibe um ID de identificacao do funcionario$/) do
has_content?('personal_txtEmployeeId')
end

@cadastro2
Quando(/^preencher todos os campos$/) do
fill_in('firstName', :with => 'Juliano')
fill_in('middleName', :with => 'Silva')
fill_in('lastName', :with => 'Silva')
check('chkLogin')
fill_in('user_name', :with =>'12345')
fill_in('user_password', :with =>'12345')
fill_in('re_password', :with =>'12345')
select('Enabled', :from => 'status')
click_button('btnSave')
end

@cadastro3
Quando(/^acessar minha conta com usuario e senha criada$/) do
   fill_in('txtUsername', :with => '12345')
  fill_in('txtPassword', :with => '12345')
  click_button('btnLogin')
end

Entao(/^apresentara o nome do usuario logado$/) do
  assert_text('Juliano')
end