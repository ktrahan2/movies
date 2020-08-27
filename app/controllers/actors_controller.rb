class ActorsController < ApplicationController
    def index
        actors = Actor.all
        render json: actors, include: [:movies, :directors]
    end

    def show
        actor = Actor.find(params[:id])
        render json: actor, include: [:movies, :directors]
    end

    def create
        actor = Actor.create(
            name: params[:name]
        )
        render json: actor
    end
    
    def update
        actor = Actor.find(params[:id])

        actor.update(
            name: params[:name]
        )
        render json: actor
    end

    def destroy
        actor = Actor.find(params[:id])

        actor.destroy

        render status :no_content
    end
end
