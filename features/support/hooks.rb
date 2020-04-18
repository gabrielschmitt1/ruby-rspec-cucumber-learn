# Trabalhar sem tag
#Before do 
#   #   #...code
#   puts "Estou sendo executado antes de cada cenario"
#end
# 
# Trabalhar com tag
#Before('@tag_cenario') do 
#   #...code
#   puts "Rodei apenas neste cenario"
#end
#
After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')

    if scenario.failed?
        tirar_foto(scenario_name.downcase!, 'Falhou')
    else
        tirar_foto(scenario_name.downcase!, 'Passou')
    end
end