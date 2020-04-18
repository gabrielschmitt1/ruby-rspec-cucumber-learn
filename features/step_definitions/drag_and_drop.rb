Quando("eu faço um drag and drop") do
    visit '/iteracoes/draganddrop'
    @primeiro_elemento = find('#winston')
    @segundo_elemento = find('#dropzone')
    #@primeiro_elemento.drag_to(@segundo_elemento)
    sleep(5)
end