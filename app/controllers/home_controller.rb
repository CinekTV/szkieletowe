class HomeController < ApplicationController
  def index
  end

  def top
    @users = User.all
  end

  def user_tab
  end
end
