class ApplicationController < ActionController::Base

  private
    
    def set_employee_table
      @employee_table = EmployeeTable.find(params[:id])
    end

    
    def employee_table_params
      params.require(:employee_table).permit(:name, :email, :address)
    end


    helper_method :current_user, :logged_in? #it will help to provide assistance to session handling
    def current_user
      #memorization @current_user if user_id is present is in current_user  otherwise it will add the user_id in current_user
      @current_user || @current_user = User.find(session[:user_id]) if session[:user_id] 
    end 

    def logged_in?
      !!current_user #using double "!!" we can convert any variable to boolean
    end

    def require_user
      if !logged_in?
        flash[:danger] = "you must be logged in to perform action "
        redirect_to root_path
      end 
    end
end
