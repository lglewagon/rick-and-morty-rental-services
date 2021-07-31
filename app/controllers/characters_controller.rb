class CharactersController < ApplicationController

    def choose
    end

    def index
      @category = params[:character]
      if @category.present? 
        @characters = Character.where(category: @category)
      else
        @characters = Character.all #le rick et morty de la mort TO DO !!!
      end
    end

    def show
      @character = Character.find(params[:id])
    end
end
