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



Contexto:
Dado que eu acesse a página de autenticação com um dos campos inválidos


Cenário: Autenticação de usuário com dados inválidos
Quando eu digitar o usuário "karina@ebac.com.br"
E a senha "senha1234"
Então deve exibir uma mensagem de alerta "Usuário ou Senha inválida"



Esquema do Cenário: Validação de Login
Quando eu digitar o <email>
E a <senha> para acesso ao sistema
Então deve exibir <mensagem> da ação


| email                | senha       | mensagem                     |
| "karina@ebac.com.br" | "senha@123" | "Usuário não cadastrado"     |
| "karinaebac.com.br"  | "senha@123" | "Formato de E-mail Inválido" |
| "karina@ebac.com.br" | "senha1234" | "Usuário ou Senha inválida"  |



            
