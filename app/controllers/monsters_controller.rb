class MonstersController < ApplicationController

    def index
        @monsters = Monsters.all
        render json: @monsters
    end

    #GET /movie/1
    def show
        render json: {monster: @monsters}
    end

    def create
        @monster = MonstersService.register(params[:name], params[:hp], params[:str], params[:dex], params[:con], params[:int], params[:wis], params[:cha])
        render json: {error: "There was a problem saving your monster"}, status: unprocessable_enity and return unless @monster
        render json: @monster.profile, status: ok
    end

    def update
        if @monster.update(monsters_params)
            render json: @monster
        else
            render json: @monster.errors, status: :unprocessable_entity
        end
    end

    #DELETE /movie/1
    def destroy
        @monster.destroy
    end

    private 
    def monsters_params
        params.require(:monsters).permit(:name, :description)
    end 
end