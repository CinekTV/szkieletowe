class HomeController < ApplicationController
  after_action :all_plus


  def all_plus
    userek = User.find(current_user.id)
    if userek.pomp_dzien > 0
      userek.pomp_all = userek.pomp_all + userek.pomp_dzien
      userek.pomp_miesiac = userek.pomp_miesiac + 1
    end
    userek.save
  end
  
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
