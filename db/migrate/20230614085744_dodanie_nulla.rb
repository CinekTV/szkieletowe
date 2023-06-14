class DodanieNulla < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :nick, from: nil, to: nil
    change_column_default :users, :nazwisko, from: nil, to: nil
    change_column_default :users, :imie, from: nil, to: nil
  end
end
