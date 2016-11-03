module PageHelpers
  def youcadastro
    @youcadastro ||= Panel::PageSite.new
  end

  def youlogin
    @youlogin ||= Panel::PageLogin.new
  end

    def youcauto
    @youcauto ||= Panel::PageCotacaoAuto.new
  end
end



