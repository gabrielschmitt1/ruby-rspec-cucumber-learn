class ListaDeElementos < SitePrism::Page
    set_url '/buscaelementos/table'
    # Mapeando uma lista de elementos (array)
    elements :lista, 'tr > td'
end