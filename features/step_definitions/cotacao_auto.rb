# encoding: utf-8
# !/usr/bin/env ruby

Dado(/^que eu acesse a página Youse auto$/) do
  visit "https://www.youse.com.br/auto/order/new"
  #aqui ficou comentado devido a cada hora vir a frase sem ou com "!"
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
  expect(youcauto.alterar_seguro).to eql('Essa é a parte mais legal: bora deixar o seguro com a sua cara?')
end

E(/^configurar seguro$/) do
    youcauto.configurar_seguro
    expect(youcauto.sugestoes_seguro).to eql('Sugestões de Assistências Youse para vc. Conheça as assistências e serviços disponíveis pra você e deixe o seguro do seu jeito.')
    youcauto.configurar_adicionais
    expect(youcauto.quase_la).to eql('Conta aí um pouquinho mais sobre vc.')
end

E(/^preencher dados pessoais$/) do
     youcauto.informar_dados
     youcauto.informar_placa
end

Então(/^chegar na página de pagamento$/) do
  expect(youcauto.informar_placa).to eql('Para finalizar, insira os dados de pagamento.')

end