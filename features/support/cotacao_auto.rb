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
      fill_in('auto_order_flow_lead_person_data_lead_person_attributes_email', :with => 'testethiago@teste.com')
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
      sleep 5
      fill_in('auto_order_flow_pricing_requirements_driver_attributes_date_of_birth', :with => '18/11/1986')
      sleep 2
      fill_in('auto_order_flow_pricing_requirements_driver_attributes_date_of_birth', :with => '18/11/1986')
      find('#auto_order_flow_pricing_requirements_driver_attributes_years_since_last_claim').trigger('click')
      select 'nunca tive'
      click_button('próximo passo')

    end

    def alterar_seguro
      page.find(:css, "p.h2").text
    end

    def sugestoes_seguro
      page.find(:css, "h2.h2").text
    end

    def configurar_seguro
      click_button('prosseguir')
    end

    def configurar_adicionais
      click_button('próximo passo')
    end

    def quase_la
      page.find(:css, "span.hl2").text
    end

    def informar_dados
      fill_in('auto_order_flow_insured_person_data_insured_person_attributes_name', :with => 'Thiago teste')
      fill_in('auto_order_flow_insured_person_data_insured_person_attributes_cpf', :with => '123.345.433-76')
      sleep 2
      fill_in('auto_order_flow_insured_person_data_insured_person_attributes_cpf', :with => '339.259.308-76')
      page.find(:id, "select2-auto_order_flow_insured_person_data_insured_person_attributes_occupation-container").click
      fill_in("#input.select2-search__field", :with => 'Analista de desenvolvimento de sistemas')
      #page.save_screenshot('image_name3.png')
      page.find(:id, 'auto_order_flow_insured_person_data_insured_person_attributes_salary_range').click
      select 'Até R$ 800,00'
      fill_in('auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number', :with => '10')
      click_button('próximo passo')
    end

    def informar_placa
      fill_in('auto_order_flow_vehicle_data_vehicle_attributes_license_plate', :with => 'DSS-1212')
      click_button('contrate agora')
    end

    def pagina_pagamento
      page.find(:css, "h2.summary-credit-card__title").text
    end
  end
end