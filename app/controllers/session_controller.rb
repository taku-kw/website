class SessionController < ApplicationController
  include SessionHelper

  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:login_password])
      log_in user
      render '/session/create_ok'
    else
      render '/session/create_ng'
    end
  end

  def delete
    log_out if logged_in?
    redirect_to '/songlist'
  end
end
