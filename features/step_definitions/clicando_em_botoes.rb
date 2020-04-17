Quando("eu clico em botoes") do
    visit '/'
    click_on('Começar Automação Web') # click_link_or_button São identicos
    visit '/buscaelementos/botoes/'
    click_button(class: 'btn waves-light')
    find('a[onclick="ativaedesativa2()"]').click  # Concatenando busca de elementos
    find('a[onclick="ativaedesativa2()"]').double_click # Dois cliques
    find('a[onclick="ativaedesativa2()"]').right_click # Clicar com Botao direito
    visit '/'
    click_link(title: 'Github') 
    sleep(2)
end

