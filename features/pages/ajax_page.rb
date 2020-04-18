class AjaxPage < SitePrism::Page
    set_url '/buscaelementos/botoes'
    element :botao, '#teste'
    element :mensagem, '#div1 > h5'

    def clicar_botao
        wait_until_botao_visible
        sleep(2)
        botao.click
    end
end