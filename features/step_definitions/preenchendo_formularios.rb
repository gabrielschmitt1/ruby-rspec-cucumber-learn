Quando("eu preencho o formulario de cadastro") do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Gabriel')
    find("#user_lastname").set('Schmitt')
    find("#user_email").send_keys('gabrielschmitt7@gmail.com')
    fill_in(id: 'user_address', with: 'QND')
    find("#user_university").set('UDF')
    find("#user_profile").send_keys('Analista de Qualidade')
    fill_in(id: 'user_gender', with: 'Masculino')
    find("#user_age").send_keys('24')
    find('input[value="Criar"]').click
    sleep(2)
end
  
Entao("eu verifico se fui cadastrado") do
    texto = find('#notice')
    expect(texto.text).to eq 'Usuário Criado com sucesso'
end