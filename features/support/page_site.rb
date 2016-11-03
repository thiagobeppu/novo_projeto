module Panel
  class PageSite

    def title_page
      page.title
    end

    def clicar_minha_conta
      page.find(:css, 'html body#container.page__home div.site-wrapper header.site-header section.nav div.g_container div.is-relative a.nav__link-account.t_hide.m_hide').click
    end

    def pagina_cadastro
      page.find(:css, "h2.hl2").text
    end

    def criar_cadastro
      page.find(:css, 'html.turbolinks-progress-bar body#container').click
    end

    def email_hash
      d = DateTime.now
      d.strftime('%m%d%H%M%S%L').to_s + '@teste.com'
    end

    def efetuar_cadastro(email = email_hash)
      page.find(:xpath, '/html/body/div[2]/a[1]').click
      fill_in('user_name', :with => "thiago beppu")
      fill_in('user_email', :with => "#{email}")
      fill_in('user_password', :with => "123456A@")
      fill_in('user_password_confirmation', :with => "123456A@")
      click_button("enviar cadastro")
    end

    def cadastro_em_uso
      page.find(:css, 'html body#container div.container__content.container__content--for-auth article.centered-card form#new_user.new_user fieldset.floating-label-form__field.floating-label-form__field--dirty ul.form__error-messages li').text
    end

    def cadastro_sucesso
      page.find(:css, 'div.account-no-policies-header__title').text
    end

    def fechar
      page.driver.quit unless Capybara.javascript_driver == :poltergeist
    end

  end
end