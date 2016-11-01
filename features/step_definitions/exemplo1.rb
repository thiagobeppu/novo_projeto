# encoding: utf-8
# !/usr/bin/env ruby

Dado(/^que eu acesse o facebook$/) do
  visit "http://extra.com.br"
end

Quando(/^eu preencher o cadastro$/) do
  expect(pageteste.passei).to eq('Extra.com.br')

  #expect(page.find(:css, "h1.logo").text).to eq('Extra.com.br')
end

Quando(/^clicar em abrir uma conta$/) do
  fill_in('ctl00_TopBar_PaginaSistemaArea1_ctl38_txtBusca', :with => 'ventilador')
  page.find(:id, "ctl00_TopBar_PaginaSistemaArea1_ctl38_btnOK").click
end

Então(/^cadastro inicial completo$/) do
  expect(page.find(:css, "h3.title2.first").text).to eq('Ventiladores e Circuladores')
end



