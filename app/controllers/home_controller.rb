class HomeController < ApplicationController
  def index
  end

  def top
    @users = User.all
    @users_dzien = User.order(pomp_dzien: :desc)
  end

  def user_tab
    @user = current_user
  end

end
