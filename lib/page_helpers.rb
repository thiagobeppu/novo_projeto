module PageHelpers
  def pageteste
    @pageteste ||= Panel::PageSite.new
  end
end