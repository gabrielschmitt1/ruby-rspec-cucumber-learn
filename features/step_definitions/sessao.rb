Quando("eu utilizo uma sessao") do
    @pagina = Pagina.new
    @pagina.load()
    #@pagina.navbar.youtube.click
    @pagina.navbar.medium.click
end