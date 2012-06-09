module EventsHelper
  
  def current_volunteer
     @current_volunteer  ||= Volunteer.find_by_id(session[:volunteer_id])
  end
   
  def current_volunteer?(volunteer)
    volunteer == current_volunteer
  end
  
  
end
