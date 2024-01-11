*** Settings ***
Resource          ../../resources/main.robot

Test Setup        Abrir navegador e acessar o site Biblioteca

Test Teardown     Fechar navegador

*** Test Cases ***

Preencher campos de login e redirecionar para página inicial
    Dado que preencha os campos de login com dados corretos
    E clicar no botão de entrar para realizar login
    E espere por 1.5 segundos
    Então verificar o alert de sucesso