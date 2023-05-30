class ModifyUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :pomp_dzien, :integer
    add_column :users, :pomp_all, :integer
    add_column :users, :pomp_tydzien, :integer
    add_column :users, :pomp_miesiac, :integer
    add_column :users, :data_pomp, :date
  end
end
