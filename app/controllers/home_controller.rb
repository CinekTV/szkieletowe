class HomeController < ApplicationController
  after_action :all_plus


  def all_plus
    if current_user
      userek = User.find(current_user.id)
      if userek.pomp_dzien > 0 && userek.pompki_kiedy != Date.current
        userek.pomp_all = userek.pomp_all + userek.pomp_dzien
        userek.pomp_miesiac = userek.pomp_miesiac + 1
        # userek.pomp_dzien = 0
        userek.pompki_kiedy = Date.current
        userek.save
      end
    end
  end
  
  def index
  end

  def top
    @users = User.all
    @users_dzien = User.order(pomp_dzien: :desc).limit(10)
    @users_all = User.order(pomp_all: :desc).limit(5)
    @users_trening = User.order(pomp_tydzien: :desc)
    @users_treall = User.order(pomp_miesiac: :desc).limit(5)
  end

  def user_tab
    @user = current_user
  end

end
