class AddColumnsToMonsters < ActiveRecord::Migration[6.0]
  def change
    add_column :monsters, :name, :string
    add_column :monsters, :hp, :integer
    add_column :monsters, :str, :integer
    add_column :monsters, :dex, :integer
    add_column :monsters, :con, :integer
    add_column :monsters, :int, :integer
    add_column :monsters, :wis, :integer
    add_column :monsters, :cha, :integer
  end
end
