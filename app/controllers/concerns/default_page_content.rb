module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Instagram | My Portfolio Wedsite"
    @seo_keywords = "Vo Thai Anh Portfolio"
  end
end
