# encoding: utf-8
# !/usr/bin/env ruby

Dado(/^que eu acesse a página Youse$/) do
  visit "https://www.youse.com.br"
  expect(youcadastro.title_page).to eq('Youse: Seguro online tipo vc | Seguro Auto, Vida e Residencial')
end

Quando(/^eu clicar em minha conta$/) do
  youcadastro.clicar_minha_conta

end

E(/^escolher o cadastr\-se$/) do
  youcadastro.criar_cadastro
  expect(youcadastro.pagina_cadastro).to eq('Faça seu login para acessar sua conta Youse.')
end

E(/^preencher os dados de cadastro existente$/) do
  youcadastro.efetuar_cadastro("teste@teste.com")
  click_button("enviar cadastro")
end

E(/^preencher os dados de cadastro$/) do
  youcadastro.efetuar_cadastro
end

Então(/^efetuar o cadastro com erro$/) do
  expect(youcadastro.cadastro_em_uso). to eql('já está em uso')
end

Então(/^efetuar o cadastro com sucesso$/) do
  expect(page).to have_content('Ops, você ainda não tem nenhum seguro Youse.')
end