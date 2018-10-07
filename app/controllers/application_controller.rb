class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhilelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
end





#	Node.js v8.12.0 to /usr/local/bin/node
#	npm v6.4.1 to /usr/local/bin/npm
