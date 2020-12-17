class MonstersController < ApplicationController

    #GET /monsters
    def index
        @monsters = Monsters.all
        render json: @monsters
    end

    #GET /monsters/1
    def show
        render json: {monster: @monsters}
    end

    #POST /monsters
    def create
        # @monster = MonstersService.register(params[:name], params[:hp], params[:str], params[:dex], params[:con], params[:int], params[:wis], params[:cha])
        # render json: {error: "There was a problem saving your monster"}, status: unprocessable_enity and return unless @monster
        # render json: @monster.profile, status: ok
        @monster = Monsters.new(monsters_params)
        if @monster.save
            render json: @monster
        else
            render json: @monster.errors, status: :unprocessable_enity
        end
    end

    #PATH/PUT /monsters/1
    def update
        if @monster.update(monsters_params)
            render json: @monster
        else
            render json: @monster.errors, status: :unprocessable_entity
        end
    end

    #DELETE /monsters/1
    def destroy
        @monster.destroy
    end

    private 

    def set_monster
        @monster = Monsters.find(params[:id])
    end
    
    def monsters_params
        params.require(:monsters).permit(:name, :hp, :str, :dex, :con, :int, :wis, :cha)
    end 
end