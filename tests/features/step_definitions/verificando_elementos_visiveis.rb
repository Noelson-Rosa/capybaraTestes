Quando('clico no botao') do
   visit '/buscaelementos/botoes' 
   find('#teste').click
end
  
Entao('verifico se o texto apareceu na tela com sucesso') do
   @texto = find('#div1')
   expect(@texto.text). to eq 'Você Clicou no Botão!'   #// modo padrão
   
  # page.assert_text(text, 'Você Clicou no Botão!')  # usando o assert
  # page.has_text?('Você Clicou no Botão!')  # usando has
 # have_text('Você Clicou no Botão!')  #  usando o have
  sleep(4)
end