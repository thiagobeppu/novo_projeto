#language: pt

Funcionalidade: Efetuar uma cotação de um seguro auto

  Cenario: Efetuar uma cotação
    Dado que eu acesse a página Youse auto
      Quando eu preencher meu nome
      E preencher meu telefone
      * preencher email de contato
      * ir para informações do veiculo
      * preencher dados do carro
    Então chegar na página de pagamento
