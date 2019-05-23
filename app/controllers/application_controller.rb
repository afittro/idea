class ApplicationController < ActionController::Base
  helper_method :current_user, :admin_path
  before_action :current_user
  before_action :set_paper_trail_whodunnit

  require 'etc'
  def current_user
    login = Etc.getlogin
    @current_user ||= User.find_by_user_name(login)
  end

  def admin_path
    if current_user.role.admin? or current_user.role.lead?
      return rails_admin_path
    else
      return '#'
    end
  end

end
