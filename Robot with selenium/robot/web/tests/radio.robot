*** Settings ***

Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***

Selecionando por Id

    Go to                           ${url}/radios
    Select Radio Button             movies      cap
    Radio Button Should Be Set to   movies      cap
    Sleep                           5


Selecionando por Value
    Go to                           ${url}/radios
    Select Radio Button             movies      guardians
    Radio Button Should Be Set to   movies      guardians
    Sleep                           5
