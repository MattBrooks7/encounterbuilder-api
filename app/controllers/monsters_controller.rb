class MonstersController < ApplicationController
    
        def index
            @monsters = Monsters.all
            render json: @monsters
        end
    
        def show
            render json: { monsters: @monsters}
        end
    
        def create
            @monsters = Monsters.new(monsters_params)
            if @monsters.save
                render json: @monsters
            else
                render json: @monsters.errors, status: :unproccesable_entity
            end
        end
    
        def update
            if @monsters.update(monsters_params)
                render json: @monsters
            else
                render json: @monsters.errors, status: :unproccesable_entity
            end
        end
    
        def destroy
            @monsters.destroy
        end
    
        private
    
        def set_monsters
            @monsters = Monsters.find(params[:id])
        end
    
        def monsters_params
            params.require(:monsters).permit(:name, :Hp, :Str, :Dex, :Con, :Int, :Wis, :Cha, :image )
        end
    end    
end
