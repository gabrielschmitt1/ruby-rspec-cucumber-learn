Quando("eu utilizo o mouse hover") do
    visit '/iteracoes/mousehover'
    find('.activator').hover
    # Caso queira clicar basta passar o click .click no final
end