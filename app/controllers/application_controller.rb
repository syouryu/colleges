class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def authenticate_user
    return unless @current_user.nil?

    flash[:notice] = 'ログインが必要です'
    redirect_to('/login')
  end

  def forbid_login_user
    return unless @current_user

    flash[:notice] = 'すでにログインしています'
    redirect_to('graduate_schools/index', allow_other_host: true)
  end
end
