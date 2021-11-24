*** Settings ***

Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

**** Variables ****

 
${check_thor}       id:thor
${iron_man}         css:input[value='iron-man']
${pantera_black}    xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando opção com ID
    
    Go to                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}
    

Marcando opção com CSS Selector

    
    Go to                           ${url}/checkboxes
    Select Checkbox                 ${iron_man}
    Checkbox Should Be Selected     ${iron_man}
   


Marcando opção com Xpath

    [tags]                          ironman
   
    Go to                           ${url}/checkboxes
    Select Checkbox                 ${pantera_black}
    Checkbox Should Be Selected     ${pantera_black}
    





