class Difult2 < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :pomp_dzien, from: nil, to: 0
    change_column_default :users, :pomp_tydzien, from: nil, to: 0
    change_column_default :users, :pomp_miesiac, from: nil, to: 0
  end
end
