module Panel
  class PageCotacaoAuto

    def cotacao_acesso
      page.find(:css, "h2.h2.section-vertical-spacing").text
    end

    def preencher_nome
      fill_in('auto_order_flow_lead_person_data_lead_person_attributes_name', :with => 'thiago')
    end

    def preencher_telefone
      fill_in('auto_order_flow_lead_person_data_lead_person_attributes_phone', :with => '(11) 99999-9999')
    end

  def preencher_email
      fill_in('auto_order_flow_lead_person_data_lead_person_attributes_email', :with => 'teste@teste.com')
    end

    def clicar_sobre_veiculo
      page.find(:css, '.button.button--primary').click
    end

    def sobre_carro
      page.find(:css, "h2.h2.section-vertical-spacing").text
    end

    def preencher_dados_carro
      page.find(:id, 'auto_order_flow_pricing_requirements_vehicle_attributes_make').click
      select 'CHEVROLET', match: :first
      page.find(:id, 'auto_order_flow_pricing_requirements_vehicle_attributes_model').click
      select 'CELTA'
      page.find(:id, 'auto_order_flow_pricing_requirements_vehicle_attributes_year').click
      select '2015'
      page.find(:id, 'auto_order_flow_pricing_requirements_vehicle_attributes_version').click
      select 'CELTA SPIRIT / LT 1.0 MPFI 8V FLEXP. 5P (Gasolina / Flex)'
      fill_in('auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode', :with => '07700-175')
      page.find(:id, 'auto_order_flow_pricing_requirements_driver_attributes_gender').click
      select 'Masculino'
      fill_in('auto_order_flow_pricing_requirements_driver_attributes_date_of_birth', :with => '18/11/1986')
      page.find(:id, 'auto_order_flow_pricing_requirements_driver_attributes_years_since_last_claim').click
      select 'não tive', match: :first
    end
  end
end



