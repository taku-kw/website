class MypageController < ApplicationController

  include SessionHelper
  before_action :login_check, only: [:index]

  def index

  end

  def login_check
    if !logged_in?
      redirect_to '/songlist', action: 'index', method: :get
    end
  end

end
