class PompkiKiedy < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :pompki_kiedy, :date
  end
end
