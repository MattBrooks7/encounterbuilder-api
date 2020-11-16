class CreateMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :monsters do |t|
      t.string, :name
      t.integer, :Hp
      t.integer, :Str
      t.integer, :Dex
      t.integer, :Con
      t.integer, :Int
      t.integer, :Wis
      t.integer, :Cha
      t.string :image

      t.timestamps
    end
  end
end
