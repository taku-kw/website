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

  def create_guest
    guest_log_in
    redirect_to '/songlist'
  end

  def new

  end

  def new_validate
    @user = User.new(name: params[:signup_id], password: params[:signup_password], email: params[:mail], age: params[:age])
    if @user.save
      log_in @user
      redirect_to '/songlist'
    else
      render action: :new
    end
  end

  def delete
    log_out if logged_in?
    redirect_to '/songlist'
  end
end
