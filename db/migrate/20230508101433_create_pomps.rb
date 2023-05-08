class CreatePomps < ActiveRecord::Migration[7.0]
  def change
    create_table :pomps do |t|
      t.integer :user_id
      t.integer :pomp_dzis
      t.integer :pomp_dzien
      t.integer :pomp_tydzien
      t.integer :pomp_miesiac
      t.date :data

      t.timestamps
    end
  end
end
