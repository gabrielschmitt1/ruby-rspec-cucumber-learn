Quando("eu seleciono um radiobox e checkbox") do
    visit '/buscaelementos/radioecheckbox'
    find('label[for="black"]').click
    sleep(3)
    # checkbox
    check('purple', allow_label_click: true)
    sleep(3)
    uncheck('purple', allow_label_click: true)
    sleep(2)
    # radiobox
    choose('blue', allow_label_click: true)
    sleep(2)
end