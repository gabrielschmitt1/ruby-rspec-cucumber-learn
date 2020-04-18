Quando("eu faço upload de uma foto") do
    visit '/outros/uploaddearquivos'
    # Passar o ID do elemento, depois o caminho do arquivo e opçoes caso necessario.
    attach_file('upload', 'C:\Users\gabriel\Pictures\msg.PNG', make_visible: true)
    sleep(5)

end