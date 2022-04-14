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


Esquema do Cenário: Autenticação da configuração obrigatória
Quando eu digitar o <produto>
E os <requisitos> obrigatórios de cor, tamanho e quantidade
Então deve exibir <mensagem> da ação


| produto           | requisitos             | mensagem                         |
| "augusta T-shirt" | "cor e tamanho"        | "Informar quantidade do produto" |
| "augusta T-shirt" | "tamanho e quantidade" | "Informar a cor do produto"      |
| "augusta T-shirt" | "cor e quantidade"     | "Informar o tamanho do produto"  |



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


Contexto:
Dado que eu acesse a página de produto do EBAC-SHOP e clique no botão limpar, a seleção deve voltar ao estado original


Cenário: Funcionamento do botão limpar
Quando eu escolher o produto na EBAC-SHOP selecionando a informação desejada
E   clicar no botão "Limpar"
Então o produto deve voltar ao estado original

Cenário: Falha do funcionamento do botão limpar
Quando eu escolher o produto na EBAC-SHOP selecionando a informação desejada
E   clicar no botão "Limpar" sem ação atribuida
Então exibir mensagem de alerta "Função inexistente"