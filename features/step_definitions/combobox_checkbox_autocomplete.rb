Quando("eu seleciono um Checkbox") do
    visit '/buscaelementos/dropdowneselect'
    find('.btn.dropdown-button').click
    # Buscar por elemento btn
    find('#dropdown3').click
    # Usando select para selecionar elemento
    select 'Safari', from: 'dropdown'
    # usando o select_option com o Find
    find('option[value="2"]').select_option
    sleep(5)
end
  
Entao("eu verifico se ele selecionou corretamente") do
    texto = find('#div3 > h5')
    expect(texto.text).to eq 'Você Clicou no Dropdown Sent!'
end
  
Quando("eu escrevo parte de uma palavra ou texto") do
    visit '/widgets/autocomplete'
    find('#autocomplete-input').set 'rio de'
    find('ul', text: 'Rio de Janeiro').click
end
  