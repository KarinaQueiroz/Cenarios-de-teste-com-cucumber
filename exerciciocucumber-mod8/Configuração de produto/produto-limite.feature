#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho, gosto e escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página de produto do EBAC-SHOP com inclusão limite de 10 produtos por venda


Cenário: Validação de quantidade limite preenchido
Quando eu escolher o produto na EBAC-SHOP
E preencher a quantidade com até 10 produtos
Então inserir no carrinho

Cenário: Validação de quantidade limite ultrapassada
Quando eu escolher o produto na EBAC-SHOP
E preencher a quantidade com 20 produtos
Então exibir mensagem de alerta "Por favor, selecionar apenas 10 produtos por venda"