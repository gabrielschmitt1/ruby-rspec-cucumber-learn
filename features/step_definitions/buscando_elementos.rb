Quando("eu busco elementos") do
    visit '/buscaelementos/botoes'
end

Entao("eu verifico se o elemento esta presente na pagina.") do
    # o ALL Busca todos os elementos que contenham o conteudo especificado
    page.all(:css, '.btn')
    # O Find busca um elemento mapeado
    find('#teste')
    # Busca pelo id
    find_by_id('teste')
    # Busca pelo botao
    find_button(class: 'btn waves-light')
    # Busca pelo primeiro elemento mapeado
    first('.btn')
    # Busca pelo link especificado
    find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')

end
  