class ApplicationController < ActionController::Base
  helper_method :current_user, :admin_path
  before_action :current_user
  before_action :set_paper_trail_whodunnit
  semantic_breadcrumb :index, :root_path

  require 'etc'
  def current_user
    login = Etc.getlogin
    @current_user ||= User.find_by_user_name(login)
  end

end
