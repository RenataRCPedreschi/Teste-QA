***Settings***
Library  SeleniumLibrary
Resource  ./testeRenata.Resource
Test Teardown  Close Browser 

***Test Case***
Processo de compra da loja Sauce Demo
  Abrir o site
  Realizar o login
  Ordenar os produtos pelo valor menor para maior
  Adicionar ao carrinho os produtos Sauce Labs Onesie e Test.allTheThings() T-Shirt (Red) 
  Abrir o carrinho e fazer checkout
  Preencher os dados do cliente
  Confirmar o valor total do carrinho e finalizar compra
  Confirmar a compra na tela
  

