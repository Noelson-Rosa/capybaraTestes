Quando('entro no iframe e preencho os campos') do
  visit '/mudancadefoco/iframe'  
   
  # mudando o foco especifico do iframe
  within_frame('id_do_iframe') do       # winthin = dentro / frame = estrutura
   # aqui dentro deste escopo iremos fazer as acoes do iframe
   fill_in(id: 'first_name', with: 'noelson' )   # fill_in = preencha / with = com
   fill_in(id: 'last_name', with: 'rosa')  # aqui peguei o id do sobrenome
  #sleep(4)
  end
end
  
Quando('entro no modal e verifico o texto') do
  visit '/mudancadefoco/modal'
  find('a[href="#modal1"]').click

  within('#modal1') do
    texto = find('h4')    # find = achar ou procurar
    expect(texto.text).to eq 'Modal Teste'
    find('.modal-close').click
    sleep(4)
  end
   
end
    
  
