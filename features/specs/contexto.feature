# language: pt
@tag_contexto

Funcionalidade: Trabalhar com contexto

- Eu como usuário
-- Desejo trabalhar com contextos

Contexto:
Dado que eu tenho 10 laranjas

Cenario: Comer laranjas
Quando eu como 2 laranjas.
Entao eu verifico se o total de laranjas é 8

Cenario: Vender laranjas
Quando eu vendo 8 laranjas
Entao eu verifico se quantidade de laranjas que eu fiquei foi de 2

