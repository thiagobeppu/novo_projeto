# encoding: utf-8
# !/usr/bin/env ruby

Dado(/^que eu acesse a página Youse auto$/) do
  visit "https://www.youse.com.br/auto/order/new"
  #expect(youcauto.cotacao_acesso).to eql("Oi, a gente quer conhecer você melhor, é rapidinho")
end

Quando(/^eu preencher meu nome$/) do
  youcauto.preencher_nome
end

E(/^preencher meu telefone$/) do
  youcauto.preencher_telefone
end

E(/^preencher email de contato$/) do
  youcauto.preencher_email
end

E(/^ir para informações do veiculo$/) do
  youcauto.clicar_sobre_veiculo
  expect(youcauto.sobre_carro).to eql('Agora, fale um pouquinho sobre o seu carro.')
end

E(/^preencher dados do carro$/) do
  youcauto.preencher_dados_carro
end











