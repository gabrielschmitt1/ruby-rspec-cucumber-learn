class IframePage < SitePrism::Page
    # Mapeando os elementos do Iframe
    element :nome, '#first_name'
    element :ultimo_nome, '#last_name'
end

class PaginaPadrao < SitePrism::Page
    set_url '/mudancadefoco/iframe'
    # Utilizando a classe IframePage para buscar seus elementos mapeados
    iframe :preecher_campo, IframePage, '#id_do_iframe'
end