*** Settings ***
Resource    ../main.robot

*** Variables ***

${CAMPO_EMAIL}               id:AdminEmail
${CAMPO_PASSWORD}            id:AdminPass
${BOTAO_ENTRAR}              //button[contains(.,('Entrar'))]
${BOTAO_SAIR}                //button[contains(.,('Voltar'))]
${ALERTA_SUCESSO}            //div[contains(.,('Bem vindo(a) Admin'))]
${ALERTA_EMAIL_INVALIDO}     //div[contains(.,('E-mail não cadastrado!'))]
${ALERTA_SENHA_INCORRETA}    //div[contains(.,('Senha invalida!'))]

*** Keywords ***

Dado que preencha os campos de login com dados corretos
    Input Text    ${CAMPO_EMAIL}    lib@admin.com
    Input Password    ${CAMPO_PASSWORD}    admin
Dado que preencha os campos de login com dado email incorreto
    Input Text    ${CAMPO_EMAIL}    lib@admin.co
    Input Password    ${CAMPO_PASSWORD}    admin
Dado que preencha os campos de login com dado senha incorreta
    Input Text    ${CAMPO_EMAIL}    lib@admin.com
    Input Password    ${CAMPO_PASSWORD}    123
Dado que preencha os campos de login com dado email e senha incorretos
    Input Text    ${CAMPO_EMAIL}      teste@gmail.com
    Input Password    ${CAMPO_PASSWORD}    123
E espere por 1.5 segundos
    Sleep    1.5s
E clicar no botão de entrar para realizar login
    Click Button    ${BOTAO_ENTRAR} 
Então verificar o alert de sucesso
    Element Should Be Visible    ${ALERTA_SUCESSO}
Então verificar o alert de email inválido
    Element Should Be Visible    ${ALERTA_EMAIL_INVALIDO}
Então verificar o alert de senha incorreto
    Element Should Be Visible    ${ALERTA_SENHA_INCORRETA}