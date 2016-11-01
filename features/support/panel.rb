module Panel
  class PageSite
    def passei
      page.find(:css, "h1.logo").text
    end
  end
end