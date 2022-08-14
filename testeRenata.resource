***Variables***
${SITE}  https://www.saucedemo.com
${NAVEGADOR}  Chrome
${CAMPO_LOGIN}  css=#user-name
${CAMPO_SENHA}  id=password
${BTN_LOGIN}  xpath=//*[@id="login-button"]
${LOGIN}  standard_user
${SENHA}  secret_sauce
${BTN_FILTRO}  xpath=//*[@id="header_container"]/div[2]/div[2]/span/select
${OPCAO_FILTRO}  xpath=//*[@id="header_container"]/div[2]/div[2]/span/select/option[3]
${BTN_PRODUTO1}  xpath=//*[@id="add-to-cart-sauce-labs-onesie"]
${BTN_PRODUTO2}  xpath=//*[@id="add-to-cart-test.allthethings()-t-shirt-(red)"]
${BTN_CARRINHO}  xpath=//*[@id="shopping_cart_container"]/a
${BTN_CHECKOUT}  id=checkout
${CAMPO_NOME}  id=first-name
${CAMPO_SOBRENOME}  id=last-name
${CAMPO_CEP}  id=postal-code
${NOME}  Renata
${SOBRENOME}  Rabelo
${CEP}  12325
${BTN_CONTINUE}  id=continue
${CONFIRMA_TEXTO}  25.90
${CONFIRMA_VALOR}  xpath=//*[@id="checkout_summary_container"]/div/div[2]/div[7]
${BTN_FINISH}  xpath=//*[@id="finish"]
${MSG_OK}  THANK YOU FOR YOUR ORDER



***Keywords***
Abrir o site
  Open Browser  ${SITE}  ${NAVEGADOR}
  Maximize Browser Window
  Set Selenium Speed  0.80

Realizar o login
  Input Text  ${CAMPO_LOGIN}  ${LOGIN}
  Input Text  ${CAMPO_SENHA}  ${SENHA}
  Click Element  ${BTN_LOGIN}

Ordenar os produtos pelo valor menor para maior
  Click Element  ${BTN_FILTRO}
  Click Element  ${OPCAO_FILTRO}

Adicionar ao carrinho os produtos Sauce Labs Onesie e Test.allTheThings() T-Shirt (Red)
  Click Element  ${BTN_PRODUTO1}
  Click Element  ${BTN_PRODUTO2}

Abrir o carrinho e fazer checkout
  Click Element  ${BTN_CARRINHO}
  Click Element  ${BTN_CHECKOUT}

Preencher os dados do cliente
  Input Text  ${CAMPO_NOME}   ${NOME}
  Input Text  ${CAMPO_SOBRENOME}   ${SOBRENOME}
  Input Text  ${CAMPO_CEP}   ${CEP}
  Click Element  ${BTN_CONTINUE}
  
Confirmar o valor total do carrinho e finalizar compra
  Element Should Contain  ${CONFIRMA_VALOR}  ${CONFIRMA_TEXTO} 
  Scroll Element Into View  ${BTN_FINISH}
  Click Element  ${BTN_FINISH}

Confirmar a compra na tela
  Page Should Contain  ${MSG_OK}
