class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :require_login

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user
  
    def authorize
      redirect_to '/login' unless current_user
    end

    def go_home
      redirect_to home_path
    end

private
    def require_login
        return head(:forbidden) unless session.include? :user_id
    end
  
  end
