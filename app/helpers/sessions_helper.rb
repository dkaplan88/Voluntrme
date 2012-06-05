module SessionsHelper
    def sign_in(volunteer)
      cookies.permanent[:remember_token] = volunteer.remember_token
      current_volunteer = volunteer
    end

    def signed_in?
       !current_volunteer.nil?
     end

    def current_volunteer=(volunteer)
      @current_volunteer = volunteer
    end

    def signed_in_volunteer
      unless signed_in?
        store_location
        redirect_to signin_path, notice: "Please Sign In!"
      end
    end

    def current_volunteer
      @current_volunteer  ||= Volunteer.find_by_id(session[:volunteer_id])
    end

    def current_volunteer?(volunteer)
      volunteer == current_volunteer
    end


     def sign_out
        current_volunteer = nil
        cookies.delete(:remember_token)
    end

    def redirect_back_or(default)
      redirect_to(session[:return_to] || default)
      session.delete(:return_to)
    end

    def store_location
      session[:return_to] = request.fullpath
    end
end
