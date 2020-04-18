Quando("eu acesso um elemento") do
    home.load()
    home.clicar_botao()
end

Entao("eu espero até que ele esteja disponivel") do
    home.wait_until_mensagem_visible
    expect(home.mensagem.text).to eq 'Você Clicou no Botão!'
end

