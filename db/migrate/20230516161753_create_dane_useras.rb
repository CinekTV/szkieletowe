class CreateDaneUseras < ActiveRecord::Migration[7.0]
  def change
    create_table :dane_useras do |t|
      t.string :imie
      t.string :nazwisko
      t.string :nick
      t.integer :wiek
      t.integer :pompki_dzis

      t.timestamps
    end
  end
end
