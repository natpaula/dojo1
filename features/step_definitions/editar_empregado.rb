Dado(/^que eu esteja na página para editar dados dos empregados$/) do           
  visit 'http://opensource.demo.orangehrmlive.com/'  
end                                                                             
                                                                                
Quando(/^eu realizar alterações nos dados de um empregado$/) do                 
  fill_in('txtUsername',:with => 'admin')
  fill_in('txtPassword',:with => 'admin')
  click_button('btnLogin')
  find('#menu_pim_viewPimModule').click
  find('#menu_pim_viewEmployeeList').click
  find('#resultTable')
  assert_text('0001')
  click_link('0001')
  click_button('btnSave')
  select('Single',:from => 'personal[cmbMarital]')
  select('Brazilian',:from => 'personal[cmbNation]')
  fill_in('personal_txtEmpLastName', :with => 'Silva')
  click_button('btnSave')
end                                                                             
                                                                                
Então(/^o cadastro do empregado será atualizado com sucesso$/) do               
  assert_text('Silva')
  assert_text('Single')
  assert_text('Brazilian')  
end                                                                             