class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # private
  #   def ensure_admin!
  #     unless current_user.admin?

  #        @admin_errors = ["Insufficient permissions for the page you are trying to access"]


  #       # sign_out current_user

  #       # redirect_to root_path

  #       return false
  #     end
  #   end

end

# class AdminController < ApplicationController
  # before_action :ensure_admin!

# end