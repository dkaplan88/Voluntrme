module ApplicationHelper
  
  def current
    Volunteer.find_by_id(session[:user_id])
  end
end
