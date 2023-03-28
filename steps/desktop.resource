*** Settings ***
Resource            ../resource/BDDpt-br.resource
Resource            ../resource/config.resource
Resource            ../pages/desktop.resource

*** Keywords ***
estou com a aplicação aberta
    ${PID}=    launch application    ${CURDIR}/../app/MyCRM.exe
    attach application by pid        ${PID}
    set global variable              ${PID}
    wait until element is visible    ${CAMPO_FIRST_NAME}

digito o primeiro e último nome
    element should be visible    ${CAMPO_FIRST_NAME}
    set text to textbox          ${CAMPO_FIRST_NAME}      Joana
    element should be visible    ${CAMPO_LAST_NAME}
    set text to textbox          ${CAMPO_LAST_NAME}       Silva

altero o gênero
    element should be visible    ${CHECKBOX_FEMALE}
    click    ${CHECKBOX_FEMALE}

altero o estado
    element should be visible       ${CAMPO_ESTADOS}
    click                           ${CAMPO_ESTADOS}
    select listbox item by name     ${LISTA_ESTADOS}    CA
    listbox selection should be     ${LISTA_ESTADOS}    CA
    press key    s'ENTER'

verifico o código postal
    element should be visible       ${CAMPO_ZIPCODE}
    set text to textbox             ${CAMPO_ZIPCODE}    123
    element should be visible       ${BOTAO_VALIDAR_ZIP}
    click                           ${BOTAO_VALIDAR_ZIP}
    element should be visible       ${MSG_ZIP_VALIDO}

seleciono a aba 'Other'
    element should be visible       ${ABA_OTHER}
    click                           ${ABA_OTHER}

clico no botão 'Save'
    wait until element is visible   ${BOTAO_SALVAR}
    click                           ${BOTAO_SALVAR}

visualiso o popup com a mensagem correta
    wait until element is visible                       ${MSG_POPUP_SAVE}
    name should be    SAVE button has been clicked      ${MSG_POPUP_SAVE}
    element should be visible    ${BOTAO_OK_POPUP_SAVE}
    click                        ${BOTAO_OK_POPUP_SAVE}

Fechar App
    close application    ${PID}