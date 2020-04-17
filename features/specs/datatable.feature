# language: pt 
@tag_datatable

Funcionalidade: Trabalhar com Datatable

- Eu como usuário
-- Desejo trabalhar com Datatable

Cenario: Comer melancia
Dado que eu tenho melancias
|melancia| 100|
Quando eu como 5 melancias
Entao eu verifico quantas melancias me restaram  

Cenario: Comprar melancia
Dado que eu possuo melancias
| melancia |
| 100      |
Quando eu compro 5 melancias
Entao eu verifico com quantas melancias estou

