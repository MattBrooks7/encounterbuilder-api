class MonstersService

    def self.register(name, hp, str, dex, con, int, wis, cha)
        monster = Monsters.new ({
                            name: name,
                            hp: hp,
                            str: str,
                            dex: dex,
                            con: con,
                            int: int,
                            wis: wis,
                            cha: cha
                            })
        return false unless monster.valid?
        monster.save
        monster
    end
end