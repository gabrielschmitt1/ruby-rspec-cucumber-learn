Quando("eu acesso um iframe") do
    # Instaciando o objeto
    @pagina = PaginaPadrao.new
    # Carregando a pagina
    @pagina.load()
    # Acessando o iframe e setando os valores dos campos.
    @pagina.preecher_campo do |iframe| 
        iframe.nome.set 'Gabriel'
        iframe.ultimo_nome.set 'Schmitt'
    end 
end
  