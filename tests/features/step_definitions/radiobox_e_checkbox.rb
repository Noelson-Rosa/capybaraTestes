Quando('eu marco um checkbox e um radiobox') do
    visit '/buscaelementos/radioecheckbox'   
    find('label[for="white"]').click
    check('purple', allow_label_click: true)     #allow = permitir    check = marcar
    sleep(2)
    uncheck('purple', allow_label_click: true)   #uncheck = desmarcar
    sleep(5)
    choose('red', allow_label_click: true)
    sleep(2)
end
  