*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/variables.robot
Resource    ../resources/locators.robot 


*** Keywords ***
Ouvrir Le Navigateur
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Naviguer Vers La Catégorie
    Wait Until Element Is Visible Succeeds    ${CATEGORY_XPATH}
    Click Element    ${CATEGORY_XPATH}
    Capture Page Screenshot    ${RESULTS_FOLDER}/${SCREENSHOT_PREFIX}category.png


Ajouter Produit
    Wait Until Element Is Visible Succeeds    ${PRODUCT_XPATH}
    Click Element    ${PRODUCT_XPATH}
    Wait Until Element Is Visible Succeeds    ${ADD_TO_CART_XPATH}
    Click Element    ${ADD_TO_CART_XPATH}
    Capture Page Screenshot    ${RESULTS_FOLDER}/${SCREENSHOT_PREFIX}add_to_cart.png

Acceder Au Panier
    Wait Until Element Is Visible Succeeds    ${CART_LINK_XPATH}
    Click Element    ${CART_LINK_XPATH}
    Capture Page Screenshot    ${RESULTS_FOLDER}/${SCREENSHOT_PREFIX}cart.png

Verifier Produit Dans Le Panier
    Click Element    ${CART_LINK_XPATH}
    Wait Until Element Is Visible Succeeds   ${CART_ITEM_XPATH}
    Page Should Contain    ${PRODUCT_NAME_IN_CART}
    Capture Page Screenshot    ${RESULTS_FOLDER}/${SCREENSHOT_PREFIX}product_in_cart.png

Passer Au Checkout
    Wait Until Element Is Visible Succeeds    ${CHECKOUT_BUTTON_XPATH}
    Click Element    ${CHECKOUT_BUTTON_XPATH}
    Capture Page Screenshot    ${RESULTS_FOLDER}/${SCREENSHOT_PREFIX}checkout.png
    
Fermer Le Navigateur
    Close Browser

Wait Until Element Is Visible Succeeds
    [Arguments]    ${LOCATOR}
    Wait Until Keyword Succeeds    5x    3s    Wait Until Element Is Visible    ${LOCATOR}
