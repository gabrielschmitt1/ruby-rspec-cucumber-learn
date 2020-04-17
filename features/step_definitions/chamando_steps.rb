Dado("que eu tenha {int} bananas") do |valor1|
    @bananas = valor1
end

Quando("eu divido a total delas por {int} pessoas") do |valor2|
  @pessoa = valor2
  @resultado = @bananas / @pessoa
end

Entao("eu verifico quantas bananas cada um ficou") do
  expect(@resultado).to eq 5
end

Quando("eu compro {int} bananas") do |valor3|
    steps %Q(
        Dado que eu tenha 10 bananas
    )
    @comprei = valor3
    @total = @bananas + @comprei
end

Entao("eu verifico quantas bananas eu fico no total") do
    expect(@total).to eq 14
end