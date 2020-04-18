Quando("eu acesso a lista de elementos de uma tabela") do
    @lista_de_elementos = ListaDeElementos.new
    #Carregar pagina
    @lista_de_elementos.load()
    # Vendo a quantidade de elementos dentro do array e comparando com o valor real.
    @lista_de_elementos.lista.size
    expect(@lista_de_elementos.lista.size).to eq 24
    # Listando um array de elementos
    @lista_de_elementos.lista.each do |listas| 
        puts listas.text
    end
end