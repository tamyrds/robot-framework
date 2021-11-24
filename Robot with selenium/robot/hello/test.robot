
*** Settings ***

Library     app.py

*** Test Cases ***
Deve retonar mensagem de boas vindas
    ${result}=          Welcome     Tamires
    Should Be Equal      ${result}    Ola Tamires, bem vindo ao curso basico de Robot Framework!
