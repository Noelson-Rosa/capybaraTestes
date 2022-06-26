Quando('seleciono o mouse hover') do
    visit '/iteracoes/mousehover'
    find('.activator').hover   #aqui uso o ponto pois estou usando css e estou puxando de uma classe
   # find('.activator').hover.click  # agora vou usar com click
    sleep(5)
end
  