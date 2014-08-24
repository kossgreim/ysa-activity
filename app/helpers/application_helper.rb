module ApplicationHelper
  
  def set_active_nav(name)
    if !user_signed_in? && params[:controller] == 'admin/registrations' && params[:action] == 'new'
      'active' if name == 'registration'
    else
      'active' if name == params[:action]
    end
  end
end
