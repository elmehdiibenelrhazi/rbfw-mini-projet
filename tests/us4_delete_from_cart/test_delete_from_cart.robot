*** Settings ***
Resource         ../../resources/keywords.robot
Suite Setup      Open Browser To Advantage Shopping
Suite Teardown   Close Browser

*** Test Cases ***
Suppression d’un produit du panier
    ${PRODUCT_NAME}=    Set Variable    HP CHROMEBOOK 14 G1(ES)
    [Documentation]    En tant qu'utilisateur connecté, je souhaite supprimer un produit existant dans le panier pour annuler mon achat.
    [Tags]    us2    us4

    Cliquer Sur Le Bouton De Connexion
    Remplir Les Champs De Connexion
    Valider La Connexion
    Verifier Utilisateur Connecte

    Ouvrir le panier
    Verifier Produit Dans Le Panier  ${PRODUCT_NAME}
    Supprimer produit du panier   ${PRODUCT_NAME}

