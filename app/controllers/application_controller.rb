class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery

  def after_sign_in_path_for(resource)
    organizations_path
  end
end
