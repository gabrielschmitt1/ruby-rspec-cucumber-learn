Quando("eu acesso a url") do
    visit '/treinamento/home'
    # Acessa uma url
    sleep(1)
end

Entao("eu verifico se estou na pagina correta") do
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
    # Verifica se pagina acessada esta de acordo com a esperada.
end