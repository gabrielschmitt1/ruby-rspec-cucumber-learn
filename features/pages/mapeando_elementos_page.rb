class MapeandoElementos < SitePrism::Page
    set_url '/users/new'
    # Mapeando o elemento com id #user_name
    element :nome, '#user_name'
    element :sobrenome, '#user_lastname'
    # Metodo para preencher nome
    def preencher
        nome.set('Gabriel')
        #sobrenome.set('')
    end
end