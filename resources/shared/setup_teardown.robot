*** Settings ***
Resource    ../main.robot

*** Keywords ***
Abrir navegador e acessar o site Biblioteca
    Open Browser    url=https://aplicativodebiblioteca.netlify.app/login    browser=Chrome
Fechar navegador
    Close Browser