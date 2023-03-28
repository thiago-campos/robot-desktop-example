*** Settings ***
Resource                ../steps/desktop.resource
Suite Teardown    Fechar App

*** Test Cases ***
Cenário teste: Fazer input de dados e verificar mensagem
    Dado que estou com a aplicação aberta
    Quando digito o primeiro e último nome
    E altero o gênero
    E altero o estado
    E verifico o código postal
    E seleciono a aba 'Other'
    E clico no botão 'Save'
    Entao visualiso o popup com a mensagem correta