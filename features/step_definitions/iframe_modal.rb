Quando("eu entro no iframe e preencho os campos") do
    visit '/mudancadefoco/iframe'
    #Mudar o foco para o iframe
    within_frame('id_do_iframe') do
        # Trablhar dentro do iframe
        fill_in(id: 'first_name', with: 'Gabriel')
    end
end

Quando("eu entro no modal e verifico o texto") do
    visit '/mudancadefoco/modal'
    find('body > div.row > div.col.s9 > div:nth-child(3) > div > a').click
    #Mudar o foco para o Modal
    within('#modal1') do
        # Trablhar dentro do Modal
        texto = find('#modal1 > div.modal-content > h4')
        expect(texto.text).to eq 'Modal Teste'
    end
    find('#modal1 > div.modal-footer > a').click
    sleep(3)
end