# encoding: utf-8
# !/usr/bin/env ruby

E(/^preencher meu email$/) do
  youlogin.informar_email(Settings.email)
end

E(/^informar minha senha$/) do
  youlogin.informar_senha(Settings.pass)
end

Então(/^devo efetuar o login com sucesso$/) do
  expect(youlogin.login_sucesso).to eql('Login efetuado com sucesso.')
end

Então(/^fazer logout do sistema$/) do
  youlogin.efetua_logout
  expect(youlogin.logout).to eql('MINHA CONTA')
end