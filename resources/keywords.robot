*** Settings ***
Library      SeleniumLibrary
Resource    ../resources/locators.robot

*** Variables ***
${URL}   https://advantageonlineshopping.com/#/
${BROWSER}  Chrome
${PRODUCT_NAME}   HP CHROMEBOOK 14 

*** Keywords ***
Open Browser To Advantage Shopping 
   Open Browser  ${URL}   ${BROWSER}
   Maximize Browser Window 
   Set Selenium Speed  0.5s

Aller dans la catégorie Laptops
    Wait Until Element Is Visible    ${CATEGORY_LAPTOPS}  timeout=5s
   Scroll Element Into View         ${CATEGORY_LAPTOPS}
    Click Element    ${CATEGORY_LAPTOPS}
    Wait Until Element Is Visible    ${PRODUCT_LINK}

Ajouter un produit au panier
   Wait Until Element Is Visible  ${PRODUCT_LINK}  timeout=10s
   Click Element  ${PRODUCT_LINK}
   Wait Until Element Is Visible    ${ADD_TO_CART_BUTTON}    timeout=5s
   Click Button   ${ADD_TO_CART_BUTTON}

Ouvrir le panier
    Click Element    ${CART_BUTTON}


Vérifier que le produit est dans le panier
    Wait Until Element Is Visible    ${PRODUCT_IN_CART_TITLE}    timeout=5s
    Element Should Contain           ${PRODUCT_IN_CART_TITLE}    ${PRODUCT_NAME}
Supprimer produit du panier
    Wait Until Element Is Visible  ${REMOVE_BUTTON}  timeout=5s
    Click Element    ${REMOVE_BUTTON}
    Wait Until Element Is Not Visible  ${PRODUCT_IN_CART_TITLE}  timeout=10s  
    Sleep   5s
