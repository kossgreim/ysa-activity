module ApplicationHelper
  
  def set_active_nav(cntr)
    'active' if cntr == params[:controller]
  end
end
