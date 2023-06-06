class Difult1 < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :pomp_all, from: nil, to: 0
  end
end
