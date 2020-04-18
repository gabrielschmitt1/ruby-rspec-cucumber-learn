Quando("eu acesso a pagina inicial") do
    # Instanciando classe PaginaInicial
    @home_page = PaginaInicial.new
    @home_page.load()
    sleep(3)
end

Entao("eu verifico se esta na pagina correta.") do
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home')
end


  