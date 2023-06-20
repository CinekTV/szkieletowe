class DodanieNulla < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :nick, from: nil, to: "-"
    change_column_default :users, :nazwisko, from: nil, to: "-"
    change_column_default :users, :imie, from: nil, to: "-"
  end
end
