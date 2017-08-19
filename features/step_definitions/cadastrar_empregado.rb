Dado(/^que esteja na página para cadastro de empregados$/) do                    
  visit 'http://opensource.demo.orangehrmlive.com/'    
end                                                                              
                                                                                 
Quando(/^eu realizar um novo cadastro$/) do                                      
  fill_in('txtUsername',:with => 'admin')
  fill_in('txtPassword',:with => 'admin')
  click_button('btnLogin')
  find('#menu_pim_viewPimModule').click
  find('#menu_pim_addEmployee').click
  fill_in('firstName',:with => 'Natali')
  fill_in('lastName',:with => 'Paula')
  click_button('btnSave')
 
end                                                                              
                                                                                 
Entao(/^o cadastro será realizado com sucesso$/) do                              
  assert_text('Personal Details')   
end                                                                              