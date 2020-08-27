class DirectorsController < ApplicationController
    def index
        directors = Director.all
        render json: directors, include: [:movies, :actors]
    end

    def show
        director = Director.find(params[:id])
        render json: director, include: [:movies, :actors]
    end

    def create
        director = Director.create(
            name: params[:name]
        )
        render json: director
    end
    
    def update
        director = Director.find(params[:id])

        Director.update(
            name: params[:name]
        )
        render json: director
    end

    def destroy
        director = Director.find(params[:id])

        Director.destroy

        render status :no_content
    end
end
