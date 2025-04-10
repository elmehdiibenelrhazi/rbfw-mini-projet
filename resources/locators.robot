*** Settings ***
Library   SeleniumLibrary
Resource  ../resources/variables.robot


** Variables ***
#Login 
${LOGIN_BUTTON}             id=menuUserLink
${USERNAME_FIELD}           name=username
${PASSWORD_FIELD}           name=password
${SIGNIN_BUTTON}            xpath=/html/body/login-modal/div/div/div[3]/sec-form/sec-sender/button
${LOGGED_IN_USER}           css=#menuUserLink .hi-user
#Navigation et produits
${CATEGORY_LAPTOPS}    xpath=//*[@id="laptopsImg"]
${PRODUCT_LINK}        xpath=//*[@id="9"]
${ADD_TO_CART_XPATH}        xpath=//button[contains(text(), "ADD TO CART")]
${CART_BUTTON}         xpath=//*[@id="menuCart"]
${CATEGORY_XPATH}           xpath=//span[text()="${CATEGORY}"]
${CART_ITEM_XPATH}          xpath=//td//a//h3[contains(@class, 'ng-binding') and contains(text(), "${PRODUCT_NAME_IN_CART}")]
${PRODUCT_XPATH}            xpath=//a[contains(text(), "${PRODUCT_NAME}")]
${REMOVE_BUTTON}       xpath=//label[contains(text(), 'HP PAVILION 15Z TOUCH LAPTOP')]/following-sibling::a[contains(@class, 'remove')]
${CART_LINK_XPATH}          xpath=//a[@id='shoppingCartLink']
${CHECKOUT_BUTTON_XPATH}    xpath=//button[@id='checkOutButton']


# ${PRODUCT_LINK_1}      xpath=//*[@id="10"]
# ${PRODUCT_LINK_2}      xpath=//*[@id="1"]
# ${PRODUCT1_IN_CART_TITLE}  xpath=//*[@id="product"]/td[2]/a/h3