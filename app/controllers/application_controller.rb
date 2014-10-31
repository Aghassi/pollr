class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Stub this out until we do real user auth
  # TODO: Actually implement this
  def current_user
    User.first
  end
end
