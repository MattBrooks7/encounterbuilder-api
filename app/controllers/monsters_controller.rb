class MonstersController < ApplicationController

    def create
        @monster = MonstersService.register(params[:name], params[:hp], params[:str], params[:dex], params[:con], params[:int], params[:wis], params[:cha])
        render json: {error: "There was a problem saving your monster"}, status: unprocessable_enity and return unless @monster
        render json: @monster.profile, status: ok
    end

    def me
        render: json: @current_monster.profile, status: :ok
    end

    private 
    def monsters_params
        params.require(:monsters).permit(:name, :description)
    end 

end
