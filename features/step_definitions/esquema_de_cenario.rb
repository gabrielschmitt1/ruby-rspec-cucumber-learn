Quando("eu multiplico uma quantidade de {int} por um {int} qualquer") do |laranja, valor|
    @multiplicacao = laranja * valor
end

Entao("Eu verifico qual é o {int}") do |resultado|
    expect(@multiplicacao).to eq resultado
end