Quando("eu acesso janelas e verifico a mensagem") do
    visit '/mudancadefoco/janela'
    # Janela recebe a janela aberta pelo link
    janela = window_opened_by do
        #find('body > div.row > div.col.s9 > div:nth-child(11) > div > a').click
        click_link('Clique aqui')
    end
    # Mudar o foco para a janela
    within_window janela do
        # Espera que a url corrente seja igual a inserida pelo comando
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        #Recebe o valor do elemento dentro da janela
        @mensagem = find('body > div.row > div.col.s9 > div:nth-child(2) > div > h5')
        # Verifica se o valor do elemento é igual ao esperado.
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
        # Fechar janela
        janela.close
    end
    # Segunda opção
    click_link('Clique aqui')
    # Mudando para a ultima janela
    switch_to_window windows.last 
    # Espera que a url corrente seja igual a inserida pelo comando
    expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    #Recebe o valor do elemento dentro da janela
    @mensagem = find('body > div.row > div.col.s9 > div:nth-child(2) > div > h5')
    # Verifica se o valor do elemento é igual ao esperado.
    expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
    # Fechar janela
    windows.last.close
end

Quando("eu clico em algo eu recebo e alerta") do
    visit '/mudancadefoco/alert'
    # Busca o elemento e clica 
    find('body > div.row > div.col.s9 > div:nth-child(2) > div > div.example > ul > li:nth-child(1) > button').click
    # Procura na pagina um alert e executa a açao do alert
    page.accept_alert
    # Busca o elemento e clica
    find('button[onclick="jsConfirm()"]').click
    # Procura na pagina um alert e executa a açao de cancelar
    page.dismiss_confirm
    # Busca o elemento e clica
    find('button[onclick="jsPrompt()"]').click
    page.accept_prompt(with: 'Gabriel Schmitt')
end