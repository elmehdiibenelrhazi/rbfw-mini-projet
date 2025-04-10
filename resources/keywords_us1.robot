*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Ouvrir le navigateur sur la page d'accueil
    [Arguments]    ${URL}=https://advantageonlineshopping.com/#/    ${BROWSER}=chrome
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s

Aller à la page d'inscription
    Wait Until Keyword Succeeds    10x    1s    Wait Until Element Is Not Visible    css=.loader
    Wait Until Element Is Visible        xpath=//a[@id='menuUserLink']    20s
    Execute Javascript                   document.querySelector("#menuUserLink").click()
    Wait Until Element Is Visible        css=a.create-new-account    20s
    Execute Javascript                   document.querySelector("a.create-new-account").click()

Remplir le formulaire avec données valides
    Input Text    name=usernameRegisterPage               capge
    Input Text    name=emailRegisterPage                  capge@gmail.com
    Input Text    name=passwordRegisterPage               capge@1234
    Input Text    name=confirm_passwordRegisterPage       capge@1234
    Input Text    name=first_nameRegisterPage             capge
    Input Text    name=last_nameRegisterPage              ghoe
    Input Text    name=phone_numberRegisterPage           0600000000
    Select From List By Label    name=countryListboxRegisterPage    Marocco
    Input Text    name=cityRegisterPage                   Fes
    Input Text    name=addressRegisterPage                1 Rue de Test
    Input Text    name=postal_codeRegisterPage            30000
    Click Element    name=i_agree

Soumettre le formulaire
    Wait Until Element Is Visible       xpath=//button[contains(text(), 'REGISTER')]    30s
    Wait Until Keyword Succeeds         10x    1s    Element Should Be Enabled    xpath=//button[contains(text(), 'REGISTER')]
    Scroll Element Into View            xpath=//button[contains(text(), 'REGISTER')]
    Capture Page Screenshot
    Click Button                        xpath=//button[contains(text(), 'REGISTER')]
    Sleep                               30s   


