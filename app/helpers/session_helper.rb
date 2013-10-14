module SessionHelper
  def render_session_data
    render(current_user ? 'shared/session_data' : 'shared/sign_in')
  end
end
