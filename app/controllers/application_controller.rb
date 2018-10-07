class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhilelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  before_action :set_copyright

  def set_copyright
    @copyright = VtaViewTool::Renderer.copyright 'Vo Thai Anh', 'All right reserved'
  end
end

module VtaViewTool
  class Renderer
    def self.copyright name,msg
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end




#	Node.js v8.12.0 to /usr/local/bin/node
#	npm v6.4.1 to /usr/local/bin/npm
