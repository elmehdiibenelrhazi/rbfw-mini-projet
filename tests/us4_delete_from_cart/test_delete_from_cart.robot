*** Settings ***
Resource   ../../resources/keywords.robot
Suite Setup   Open Browser To Advantage Shopping
Suite Teardown  Close Browser


*** Test Cases ***
Suppression d’un produit du panier
    [Documentation]    Ce test ajoute un produit au panier puis le supprime
    Aller dans la catégorie Laptops
    Ajouter un produit au panier
    Ouvrir le panier
    Vérifier que le produit est dans le panier
    Supprimer produit du panier
