*** Settings ***
Resource    Base.robot
Library    SeleniumLibrary

*** Keywords ***

Abrir Navegador
    Setup Screenshots
    Open Browser    browser=gc    

Abrir Navegador Anônimo
    Setup Screenshots
    ${options}=    Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${options}    add_argument    incognito
    Create WebDriver    Chrome    chrome_options=${options}

Fechar Navegador
    Close Browser 

Aceita termos de utilização de cookies
    
    ${isVisible} =    Run Keyword And Return Status    Element Should Be Visible    ${btn_cookie}

    WHILE   ${isVisible} == False
        ${isVisible} =    Run Keyword And Return Status    Element Should Be Visible    ${btn_cookie}
    END

    Double Click Element    ${btn_cookie}

    WHILE   ${isVisible} == True
        ${isVisible} =    Run Keyword And Return Status    Element Should Be Visible    ${btn_cookie}
    END
