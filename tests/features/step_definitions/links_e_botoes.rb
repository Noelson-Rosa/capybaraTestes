Quando('clico em botoes') do
    #visit o mesmo que navegar até uma url específica
    visit '/'
    #click_on clicara no botão começar automação web 
    click_on('Começar Automação Web')  #click_link_or_button são identicos
    visit '/buscaelementos/botoes'
    click_button(class: 'btn waves-light')
    find('a[onclick="ativaedesativa2()"]').click
    find('a[onclick="ativaedesativa2()"]').double_click
    find('a[onclick="ativaedesativa3()"]').right_click
    visit '/'
    click_link('Github ')
    sleep(5)
end