*** Settings ***
Documentation    Cette suite permet de tester la fonctionnalité d'ajout d'un produit dans le panier
Library    SeleniumLibrary
Library        Screenshot
Resource    ../../resources/keywords_us3.robot

Test Setup    Ouvrir Le Navigateur Et Acceder A L'URL
Test Teardown    Fermer Le Navigateur

*** Keywords ***
Ouvrir Le Navigateur Et Acceder A L'URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fermer Le Navigateur
    Close Browser

*** Test Cases ***
Ajouter un produit au panier
    [Tags]    Ce test vérifie si le produit peut être ajouté au panier.
    Naviguer Vers La Catégorie
    Ajouter Produit
    
Ajouter produit et verifier l'ajout au panier
    [Tags]    Ce test vérifie si un produit peut être ajouté au panier, puis vérifie si le produit a bien été ajouté au panier.
    Naviguer Vers La Catégorie
    Ajouter Produit
    Acceder Au Panier
    Verifier Produit Dans Le Panier

Ajouter produit et verifier l'ajout au panier puis passer au checkout
    [Tags]    Ce test vérifie si un produit peut être ajouté au panier, si le produit a bien été ajouté, puis passe au processus de checkout.
    Naviguer Vers La Catégorie
    Ajouter Produit
    Acceder Au Panier
    Verifier Produit Dans Le Panier
    Passer Au Checkout
    