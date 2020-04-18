Quando("eu acesso um elemento") do
    @objeto_ajax = AjaxPage.new()
    @objeto_ajax.load()
    @objeto_ajax.clicar_botao()
end

Entao("eu espero até que ele esteja disponivel") do
    @objeto_ajax.wait_until_mensagem_visible
    expect(@objeto_ajax.mensagem.text).to eq 'Você Clicou no Botão!'
end