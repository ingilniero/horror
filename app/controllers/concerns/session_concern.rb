module SessionConcern
  DEFAULT_USER_AVATAR = ''
  DEFAULT_USER_HANDLE = 'fellow coder'

  def current_user
    session[:auth_info]
  end

  def user_avatar
    current_user['image'] || DEFAULT_USER_AVATAR
  end

  def user_handle
    current_user[available_handle_key] || DEFAULT_USER_HANDLE
  end

  private

  def available_handle_key
    user_handle_keys.find { |key| current_user[key] }
  end

  def user_handle_keys
    %w(handle nickname name email)
  end
end
