#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho, gosto e escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página de produto do EBAC-SHOP com Obrigatoriedade em seleção de cor, tamanho e quantidade.


Cenário: Validação de obrigatoriedade devidamente preenchido
Quando eu escolher o produto na EBAC-SHOP
E selecionar a cor e o tamanho e a quantidade
Então inserir no carrinho

Cenário: Validação de obrigatoriedade quantidade não informada
Quando eu escolher o produto na EBAC-SHOP
E selecionar a cor e o tamanho
Então exibir mensagem de alerta "Informar quantidade do produto"

Cenário: Validação de obrigatoriedade cor não informada
Quando eu escolher o produto na EBAC-SHOP
E selecionar o tamanho e a quantidade
Então exibir mensagem de alerta "Informar a cor do produto"

Cenário: Validação de obrigatoriedade tamanho não informada
Quando eu escolher o produto na EBAC-SHOP
E selecionar acor e a quantidade
Então exibir mensagem de alerta "Informar o tamanho do produto"



