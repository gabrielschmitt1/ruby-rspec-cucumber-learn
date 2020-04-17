Dado("que eu tenho melancias") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    @total_melancias = table.rows_hash['melancia'].to_i 
    # Transforma a tabela (Linha) em um hash 
end

Quando("eu como {int} melancias") do |valor1|
    @comer = valor1
    @resultado = @total_melancias - @comer
end

Entao("eu verifico quantas melancias me restaram") do
    expect(@resultado).to eq 95
end

Dado("que eu possuo melancias") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    table.hashes.each do |value|
        @melancias = value['melancia'].to_i
    end
    # Transforma a tabela (Coluna) em um hash 
end

Quando("eu compro {int} melancias") do |valor2|
    @comprar = valor2
    @resultado = @melancias + @comprar
end

Entao("eu verifico com quantas melancias estou") do
    expect(@resultado).to eq 105
end

