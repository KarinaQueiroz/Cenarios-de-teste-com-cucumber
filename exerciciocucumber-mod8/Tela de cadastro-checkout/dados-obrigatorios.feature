#language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra


Contexto:
Dado que eu acesse a página de cadastro do EBAC-SHOP com Obrigatoriedade de dados marcados com asterisco

Cenário: Dados válidos preenchidos
Quando inserir dados em campos com marcação
E dados com informações válidas
Então exibir mensagem "Usuário Cadastrado com sucesso"

Cenário: Dados não preenchidos
Quando inserir dados em campos com marcação
E um campo com valor null
Então exibir mensagem de alerta "Campos marcados com * são obrigatórios"


Cenário: Autenticação de email
Quando inserir email "karina@ebac.com.br"
E inserir caracteres "a-z@.com" válidos
Então exibir mensagem "E-mail cadastrado com sucesso"



Esquema do Cenário: Autenticação de email inválido
Quando eu digitar o <email>
E os <caracteres> fora do requisito
Então deve exibir <mensagem> de erro


| email                      | caracteres | mensagem                        |
| "karina32@ebac.com.br"     | "a-z@.com" | "Formato de E-mail Inválido"    |
| "ana#_#@ebac.com.br"       | "a-z@.com" | "Formato de E-mail Inválido"    |
| "marcelosilva@ebac.com.br" | "a-z@.com" | "E-mail cadastrado com sucesso" |
