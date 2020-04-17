Quando("eu clico em um butão") do
    visit '/buscaelementos/botoes'
    find('#teste').click
    sleep(2)
end
  
Entao("eu verifico se ele foi clicado corretamente") do
    @texto = find('#div1')
    expect(@texto.text).to eq 'Você Clicou no Botão!'
    page.assert_text(text, 'Você Clicou no Botão!')
    page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')
end