Quando("eu utilizo um elemento mapeado") do
    @mapeados = MapeandoElementos.new
    @mapeados.load()
    @mapeados.preencher
    # OU
    @mapeados.sobrenome.set('Schmitt')
    sleep(5)

end
