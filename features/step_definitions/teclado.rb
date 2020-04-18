Quando("eu utilizo o teclado") do
    visit '/users/new'
    find('#user_name').send_keys(:page_down)
    sleep(3)
end