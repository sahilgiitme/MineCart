module UserHelper
  # using helper method to check if the user is of admin type or regular user type
  def is_admin?
    current_user.admin == true
  end
end