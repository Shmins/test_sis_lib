*** Settings ***

Resource          ../../resources/main.robot

Test Setup        Abrir navegador e acessar o site Biblioteca

Test Teardown     Fechar navegador

*** Test Cases ***

Preencher campos de login com o email errado assim não conseguindo logar
    Dado que preencha os campos de login com dado email incorreto
    E clicar no botão de entrar para realizar login
    E espere por 1.5 segundos
    Então verificar o alert de email inválido
    
Preencher campos de login com senha errada assim não conseguindo logar
    Dado que preencha os campos de login com dado senha incorreta
    E clicar no botão de entrar para realizar login
    E espere por 1.5 segundos
    Então verificar o alert de senha incorreto

Preencher campos de login com email e senha incorretos assim não conseguindo logar
    Dado que preencha os campos de login com dado email e senha incorretos
    E clicar no botão de entrar para realizar login
    E espere por 1.5 segundos
    Então verificar o alert de email inválido
