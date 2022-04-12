#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho, gosto e escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página de produto do EBAC-SHOP e clique no botão limpar a seleção deve voltar ao estado original


Cenário: Funcionamento do botão limpar
Quando eu escolher o produto na EBAC-SHOP selecionando a informação desejada
E   clicar no botão "Limpar"
Então o produto deve voltar ao estado original

Cenário: Falha do funcionamento do botão limpar
Quando eu escolher o produto na EBAC-SHOP selecionando a informação desejada
E   clicar no botão "Limpar" sem ação atribuida
Então exibir mensagem de alerta "Função inexistente"