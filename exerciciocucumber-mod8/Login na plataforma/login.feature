#language: pt

Funcionalidade: Login na plataforma EBAC-SHOP
Como cliente da EBAC-SHOP
Quero fazer login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação para tela checkout


Cenário: Autenticação com usuário válido
Quando eu digitar o usuário "karina@ebac.com.br"
E a senha "senha@123"
Então deve direcionar para tela de checkout com carrinho

Cenário: Autenticação com usuário não cadastrado
Quando eu digitar o usuário "karina@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de alerta "Usuário não cadastrado" opção cadastrar novo usuário




Dado que eu acesse a página de autenticação com um dos campos inválidos


Cenário: Autenticação de usuário com dados inválidos
Quando eu digitar o usuário "karina@ebac.com.br"
E a senha "senha1234"
Então deve exibir uma mensagem de alerta "Usuário ou Senha inválida"



            
