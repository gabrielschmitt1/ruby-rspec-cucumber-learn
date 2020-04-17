Dado("que eu tenho {int} laranjas") do |laranjas|
    @total_laranjas = laranjas
end

Quando("eu como {int} laranjas.") do |valor1|
    @resultado = @total_laranjas - valor1
end

Entao("eu verifico se o total de laranjas é {int}") do |valor2|
    expect(@resultado).to eq valor2
end

Quando("eu vendo {int} laranjas") do |valor2|
    @resultado = @total_laranjas - valor2
end

Entao("eu verifico se quantidade de laranjas que eu fiquei foi de {int}") do |valor3|
    expect(@resultado).to eq valor3
end