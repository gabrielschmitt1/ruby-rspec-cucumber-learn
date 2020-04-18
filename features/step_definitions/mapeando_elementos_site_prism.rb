Quando("eu utilizo um elemento mapeado") do
    @mapeados = MapeandoElementos.new
    @mapeados.load()
    @mapeados.preencher
    # OU
    @mapeados.sobrenome.set('Schmitt')
    sleep(5)

end

Entao("eu verifico se o resulta é o esperado.") do
  pending # Write code here that turns the phrase above into concrete actions
end