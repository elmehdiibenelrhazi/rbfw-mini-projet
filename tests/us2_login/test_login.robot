*** Settings ***
Documentation    Cette suite permet de tester la fonctionnalité de connexion sur Advantage Online Shopping
Library          SeleniumLibrary
Library          Screenshot
Resource         ../../resources/keywords.robot
Test Setup       Open Browser To Advantage Shopping
Test Teardown    Close Browser

*** Test Cases ***
Connexion d'un utilisateur avec succès
    [Tags]    Ce test vérifie qu'un utilisateur peut se connecter avec des identifiants valides
    Cliquer Sur Le Bouton De Connexion
    Remplir Les Champs De Connexion
    Valider La Connexion
    Verifier Utilisateur Connecte