class Monsters < ApplicationRecord
    validates :name, uniqueness: true

    def profile
        {
            id: id,
            name: name,
            hp: hp,
            str: str,
            dex: dex,
            con: con,
            int: int,
            wis: wis,
            cha: cha
        }
    end
end
