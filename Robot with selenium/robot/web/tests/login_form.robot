*** Settings ***

Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão


*** Test Cases ***
Login com sucesso

    Go To           ${url}/login
    Login With      stark  jarvis!
    
    Click Element   class:btn-login


    Should See Logged User     Tony Stark
    
Senha invalida

    [tags]          login_error
    Go To           ${url}/login
    Login With      stark               acb123!
    
    
    ${message}=     Get WebElement     id:flash
    Should Contain Login Alert      Senha é invalida! 

Usuario não existe
    [tags]          login_user404
    Go To           ${url}/login
    Login With      papito               123456
    
    
    ${message}=     Get WebElement     id:flash
    Should Contain Login Alert      O usuario informado não esta cadastrado!

***Keywords***
Login With
    [Arguments]     ${uname}           ${pass}

    Input Text      css:input[name=username]            stark
    Input Text      css:input[name=password]            jarvis!
    Click Element   class:btn-login
   
Should Contain Login Alert
    [Arguments]     ${experct_message}
    ${message}=     Get WebElement     id:flash
    Should Contain  ${message}      Senha é invalida! 

Should See Logged User
    [Arguments]     ${full_name}
    Page Should Contain     Ola, ${full_name}. Voce acessou a area logada!