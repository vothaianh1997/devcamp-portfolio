class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhilelist
  include SetSource
  include CurrentUserConcern
end
