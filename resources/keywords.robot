*** Settings ***
Library      SeleniumLibrary
Resource    ../resources/locators.robot
Resource    ../resources/variables.robot

*** Keywords ***
Ouvrir Le Navigateur Et Acceder A L'URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fermer Le Navigateur
    Close Browser
    
Open Browser To Advantage Shopping
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  0.3s

Cliquer Sur Le Bouton De Connexion
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    timeout=15s
    Wait Until Element Is Enabled    ${LOGIN_BUTTON}
    Sleep    1s    # (optionnel, pour laisser le temps au loader de disparaître)
    Click Element    ${LOGIN_BUTTON}


Remplir Les Champs De Connexion
    Wait Until Element Is Visible    ${USERNAME_FIELD}    timeout=10s
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
Valider La Connexion
    Wait Until Element Is Visible    ${SIGNIN_BUTTON}    timeout=10s
    Sleep    3s
    Click Button    ${SIGNIN_BUTTON}

Verifier Utilisateur Connecte
    Wait Until Element Is Visible    ${LOGGED_IN_USER}    timeout=10s
    Element Should Contain    ${LOGGED_IN_USER}    capge
     Sleep    10s
    

Aller dans la catégorie Laptops
    Wait Until Element Is Visible    ${CATEGORY_LAPTOPS}
    Click Element    ${CATEGORY_LAPTOPS}
    Wait Until Element Is Visible    ${PRODUCT_LINK}

Wait Until Element Is Visible Succeeds
    [Arguments]    ${LOCATOR}
    Wait Until Keyword Succeeds    5x    3s    Wait Until Element Is Visible    ${LOCATOR}


Ajouter Produit
    Wait Until Element Is Visible Succeeds    ${PRODUCT_XPATH}
    Click Element    ${PRODUCT_XPATH}
    Wait Until Element Is Visible Succeeds    ${ADD_TO_CART_XPATH}
    Click Element    ${ADD_TO_CART_XPATH}

Ouvrir le panier
    Click Element  ${CART_BUTTON}


Supprimer produit du panier
    [Arguments]    ${product_name}
    ${xpath_remove}=    Set Variable    xpath=//label[contains(text(), '${product_name}')]/ancestor::tr//a[contains(@class, 'remove')]
    Wait Until Element Is Visible    ${xpath_remove}    timeout=15s
    Wait Until Element Is Enabled    ${xpath_remove}
    Sleep    1s    
    Click Element    ${xpath_remove}
    Wait Until Element Is Not Visible    xpath=//label[contains(text(), '${product_name}')]    timeout=20s


Verifier Produit Dans Le Panier
    [Arguments]    ${product_name}
    Wait Until Element Is Visible    xpath=//label[contains(text(), '${product_name}')]    timeout=20s
    Element Should Contain    xpath=//label[contains(text(), '${product_name}')]    ${product_name}

