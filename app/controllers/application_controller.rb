class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Check if the user has the privilage to access using his role
  def is_in_role(role)
  	if current_user == nil or current_user.user_type != role
  		sign_out current_user #sign_out the current user
  		redirect_to "/users/sign_in" #redirect to sign_in page
  	end
  end
end
