Quando("eu clico em um butão qualquer") do
    visit '/buscaelementos/botoes'
    find('#teste').click
    sleep(2)
end
  
Entao("eu verifico se ele existe") do
    #@texto = find('#div1')
    #expect(@texto.text).to eq 'Você Clicou no Botão!'
    #page.assert_text(text, 'Você Clicou no Botão!')
    #page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')

    find('#teste').click
    page.assert_no_text(text, 'Você Clicou no Botão!')
    page.has_no_text?('Você Clicou no Botão!')
    have_no_text('Você Clicou no Botão!')
    sleep(2)
end