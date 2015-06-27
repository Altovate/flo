class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  require 'csv'

  def after_sign_in_path_for(resource)
    case current_user.role
      when 'admin'
        contacts_path
      when 'silver'
        contacts_path
      when 'gold'
        contacts_path
      when 'platinum'
        contacts_path
      else
        root_path
    end
  end

end
