module SessionConcern
  def current_user
    session[:auth_info]
  end

  def user_avatar
    current_user['image'] || default_user_avatar
  end

  def user_handle
    current_user[available_handle_key] || default_user_handle
  end

  private

  def default_user_avatar
    ''
  end

  def default_user_handle
    'fellow coder'
  end

  def available_handle_key
    user_handle_keys.find { |key| current_user[key] }
  end

  def user_handle_keys
    %w(handle nickname name email)
  end
end
