Quando('eu faco Cadastro') do
   visit '/users/new'
   fill_in(id: 'user_name', with: 'Noelson') #fill_in = preencha / with = com
   find('#user_lastname').set('Rosa')
   find('#user_email').send_keys('noelson.nr@gmail.com')
   fill_in(id: 'user_address', with: 'francisco Faleiro 858') 
   find('#user_university').set('Unigranrio')
   find('#user_profile').send_keys('balconista')
   fill_in(id: 'user_gender', with: 'Masculino') 
   find('#user_age').set('42')  
   find('input[value="Criar"]').click 
   sleep(5)
end
  
Entao('verifico se fui cadastrado') do
  texto = find('#notice')
  expect(texto.text).to eq 'Usuário Criado com sucesso'
end