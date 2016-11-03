module Panel
  class PageLogin

    def informar_email(email)
      fill_in('email', :with => email)
      click_button('próximo passo')
    end

    def informar_senha(senha)
      fill_in('user_password', :with => senha)
      click_button('entrar')
    end

    def login_sucesso
      page.find(:css, '.flash-message__text').text
    end

    def efetua_logout
      page.find(:css, '.account-header__account-link.account-header__account-with-sub-menu>strong').click
      page.find(:id, 'track_logout').click
    end

    def logout
      page.all(:css, "span.bold")[0].text
    end
  end
end