module ApplicationHelper
  
  def set_active_nav(name)
    'active' if name == params[:action]  
  end
  
end
