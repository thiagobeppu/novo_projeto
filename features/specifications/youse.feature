#language: pt

Funcionalidade: Efetuar validação no cadastro de cliente

  Cenario: Efetuar um cadastro com dados existentes
    Dado que eu acesse a página Youse
      Quando eu clicar em minha conta
      E escolher o cadastr-se
      * preencher os dados de cadastro existente
    Então efetuar o cadastro com erro

  Cenario: Efetuar um cadastro com sucesso
    Dado que eu acesse a página Youse
      Quando eu clicar em minha conta
      E escolher o cadastr-se
      * preencher os dados de cadastro
    Então efetuar o cadastro com sucesso

  Cenario: Conseguir efetuar login
    Dado que eu acesse a página Youse
      Quando eu clicar em minha conta
      E preencher meu email
      * informar minha senha
    Então devo efetuar o login com sucesso

Cenario: Conseguir efetuar logout
    Dado que eu acesse a página Youse
      Quando eu clicar em minha conta
      E preencher meu email
      * informar minha senha
      * devo efetuar o login com sucesso
    Então fazer logout do sistema
