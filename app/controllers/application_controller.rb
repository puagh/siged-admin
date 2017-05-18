class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  # If your model is called User
  def after_sign_in_path_for(resource)
     session["user_return_to"] || welcome_index_path
  end

  def after_sign_out_path_for(resource)
     session["user_return_to"] || root_path
  end

  #def after_sign_in_path_for(resource)
  #  current_user_path
  #end
end
