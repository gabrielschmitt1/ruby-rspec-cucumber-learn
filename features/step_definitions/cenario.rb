Dado("que eu tenha {int} laranjas") do |valor1|
    puts valor1
    @total_laranjas = valor1
end

Quando("eu como {int} laranjas") do |valor2|
    puts valor2
    @result =  @total_laranjas - valor2
end

Entao("eu verifico quantas laranjas sobraram") do
    puts @result
    expect(@result).to eq 8
end

Quando("eu compro {int} laranjas") do |valor3|
    puts @compra_total
    @compra_total = @total_laranjas + valor3
end

Entao("eu verifico quantas laranjas eu tenho") do
    puts @compra_total
    expect(@compra_total).to eq 14
end


