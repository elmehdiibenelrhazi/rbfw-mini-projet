*** Settings ***
Documentation  
Library        SeleniumLibrary
Library        Screenshot
Resource       ../../resources/keywords_us1.robot

*** Test Cases ***
Test inscription avec données valides
    [Tags]    inscription    positif
    [Teardown]    Capture Page Screenshot
    Ouvrir le navigateur sur la page d'accueil
    Aller à la page d'inscription
    Remplir le formulaire avec données valides
    Soumettre le formulaire
  
